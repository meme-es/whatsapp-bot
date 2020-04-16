require './lib/owl'

RSpec.describe Owl do
  let(:owl) { Owl.new }

  describe '#picture' do
    describe 'when the method is called' do
      it 'returns a valid URL of an image of owls' do
        expect(owl.picture).to match(%r{^(https:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.jpg)$})
      end
    end
  end

  describe '#fact' do
    describe 'when the method is called' do
      it 'returns a text describing a fact about a owls' do
        expect(owl.fact).to match(/./)
      end
    end

    describe 'when the method is called' do
      it "doesn't return an empty text describing a fact about owls" do
        expect(owl.fact.empty?).not_to match(true)
      end
    end
  end
end
