require 'http'
require './lib/animals'

RSpec.describe Dog do
  describe '::picture' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a valid URL of an image of dogs' do
        expect(Dog.picture).to match(%r{^(https:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.jpg)$})
      end
    end
  end

  describe '::fact' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a text describing a fact about dogs' do
        expect(Dog.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "makes an HTTP request and doesn't returns an empty text describing a fact about dogs" do
        expect(Dog.fact.empty?).not_to match(true)
      end
    end
  end
end
