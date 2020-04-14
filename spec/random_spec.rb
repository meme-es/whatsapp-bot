require './lib/random'

RSpec.describe Random do
  let(:random) { Random.new }

  describe '::url' do
    describe 'when the method is called' do
      it 'returns a random image URL stored in an array' do
        expect(random.url).to match(%r{^(http(s)?:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.jpg)$})
      end
    end

    describe 'when the method is called' do
      it "doesn't returns an empty String which should contain an image URL" do
        expect(Dog.fact.empty?).not_to match(true)
      end
    end
  end
end
