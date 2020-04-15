require './lib/idontknow'

RSpec.describe IDontKnow do
  let(:i_dont_know) { IDontKnow.new }

  describe '#picture' do
    describe 'when the method is called' do
      it 'returns a random image URL stored in an array' do
        expect(i_dont_know.picture).to match(%r{^(http(s)?:\/\/)([\w_-]+(\.[\w_-]+)*\/)+([\w_-]+\.jpg)$})
      end
    end

    describe 'when the method is called' do
      it "doesn't returns an empty String which should contain an image URL" do
        expect(i_dont_know.picture.empty?).not_to match(true)
      end
    end
  end
end
