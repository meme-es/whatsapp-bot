require 'http'
require './lib/animals'

RSpec.describe Cat do
  describe '::picture' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a valid URL of an image of cats' do
        expect(Cat.picture).to match(%r{^(https:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.(jpg|gif|png))$})
      end
    end
  end

  describe '::fact' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a text describing a fact about cats' do
        expect(Cat.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "makes an HTTP request and doesn't returns an empty text describing a fact about cats" do
        expect(Cat.fact.empty?).not_to match(true)
      end
    end
  end
end
