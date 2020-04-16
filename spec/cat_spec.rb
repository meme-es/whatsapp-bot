require 'http'
require './lib/cat'

RSpec.describe Cat do
  let(:cat) { Cat.new }

  describe '#picture' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a valid URL of an image of cats' do
        expect(cat.picture).to match(%r{^(https:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.(\w)+)$})
      end
    end
  end

  describe '#fact' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a text describing a fact about cats' do
        expect(cat.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "makes an HTTP request and doesn't returns an empty text describing a fact about cats" do
        expect(cat.fact.empty?).not_to match(true)
      end
    end
  end
end
