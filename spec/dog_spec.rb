require 'http'
require './lib/dog'

RSpec.describe Dog do
  let(:dog) { Dog.new }

  describe '#picture' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a valid URL of an image of dogs' do
        expect(dog.picture).to match(%r{^(https:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.(\w)+)$})
      end
    end
  end

  describe '#fact' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a text describing a fact about dogs' do
        expect(dog.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "makes an HTTP request and doesn't returns an empty text describing a fact about dogs" do
        expect(dog.fact.empty?).not_to match(true)
      end
    end
  end
end
