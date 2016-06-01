require_relative '../random.rb'

describe 'random spec' do
  context 'super easy' do
    let(:arr) { [3, 1, 2] }

    it 'sorts them' do
      expect(random_sort(arr)).to(
        eq([1, 2, 3].sort)
      )
    end
  end

  xcontext 'super big array' do
    let(:sorted) { (1..10).to_a.sort }
    let(:randomized) { sorted.shuffle }

    it 'sorts them' do
      expect(random_sort(randomized)).to(
        eq(sorted)
      )
    end
  end
end
