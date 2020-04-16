require 'http'
require './lib/fox'

RSpec.describe Fox do
  let(:fox) { Fox.new }

  describe '#picture' do
    describe 'when the method is called' do
      it 'makes an HTTP request and returns a valid URL of an image of a fox' do
        expect(fox.picture).to match(%r{^(http(s)?:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.jpg)$})
      end
    end
  end

  describe '#fact' do
    describe 'when the method is called' do
      it 'returns a text describing a fact about a foxes' do
        expect(fox.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "doesn't return an empty text describing a fact about foxes" do
        expect(fox.fact.empty?).not_to match(true)
      end
    end
  end
end
