require_relative '../bubble.rb'

describe 'bubble sort' do
  context 'super easy' do
    let(:sorted) { (1..3).to_a.sort }
    let(:randomized) { [2, 3, 1] }

    it 'sorts them?' do
      result = bubble_sort(randomized)

      expect(result).to(eq(sorted))
    end
  end

  context 'super big array' do
    let(:sorted) { (1..1000).to_a.sort }
    let(:randomized) { sorted.shuffle }

    it 'sorts them' do
      result = bubble_sort(randomized)

      expect(result).to eq(sorted)
    end
  end
end
