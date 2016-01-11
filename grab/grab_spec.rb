require_relative "grabber"

RSpec.describe Grabber do
    before do
        @grabber = Grabber.new("http://google.com", ".")
    end

    describe '#parse' do
        it 'returns images src on google.com' do
          expect(@grabber.parse)
            .to eq(["/images/icons/product/chrome-48.png",
             "/textinputassistant/tia.png"])
        end
    end

    describe '#filename' do
        it 'should return "chrome-48.png"' do
          expect(@grabber.filename("/images/icons/product/chrome-48.png"))
            .to eq("chrome-48.png")
        end

        it 'should return "empty.gif"' do
          expect(@grabber.filename("/empty.gif"))
            .to eq("empty.gif")
        end

        it 'should return "ee464c2bb8996d13e0169df97487f201.png"' do
          expect(@grabber.filename("http://gallery.pub.ru/gals/news/ee464c2bb8996d13e0169df97487f201.png"))
            .to eq("ee464c2bb8996d13e0169df97487f201.png")
        end
    end

    describe '#handle image' do
        it 'returns file' do
          file = @grabber.handle_image("/images/icons/product/chrome-48.png")
          expect(File).to be_directory(".")
        end

        it 'returns nil' do
            expect(@grabber.handle_image("/images/icons/product/chrome-48"))
            .to eq(nil)
        end
    end
end
