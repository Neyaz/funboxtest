require 'uri'
require 'open-uri'
require 'nokogiri'

class Grabber
    def initialize(url, path)
        @url = url
        @path = path
    end

    def runner
        threads = []
        parse.map do |img_src|
            threads << Thread.new(img_src) do
                handle_image img_src
            end
        end
        threads.each{ |thread| thread.join }
    end

    def parse
        Nokogiri::HTML(open(@url)).css('img').map{ |i| i['src'] }.uniq
    end

    def handle_image(img_src)
        if img_src.match(/(?i)\.(jpg|png|gif)$/)
            begin
                image = open(to_absolute_link(img_src))
                File.open("#{@path}/#{filename img_src}", "wb"){ |file| file.write(image.read) }
            rescue
                puts "Something goes wrong with #{img_src}"
            end
        end
    end

    def to_absolute_link(img_src)
        if img_src.match(/http:\/\//)
            img_src
        else
            URI.join(@url, img_src)
        end
    end

    def filename(img_src)
        to_absolute_link(img_src).to_s.split('/').last
    end
end
