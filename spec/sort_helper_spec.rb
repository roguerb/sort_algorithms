require_relative '../sort_helper.rb'

describe 'sort helper' do
  describe 'sorted?' do
    context 'nil' do
      it 'is already sorted' do
        expect { sorted?(nil) }.to(
          raise_error ArgumentError
        )
      end
    end

    context 'boolean' do
      it 'raises an exception' do
        expect { sorted?(false) }.to(
          raise_error ArgumentError
        )
      end
    end

    context 'number' do
      it 'raises an exception' do
        expect { sorted?(123) }.to(
          raise_error ArgumentError
        )
      end
    end

    context 'string' do
      it 'raises an exception' do
        expect { sorted?('foo') }.to(
          raise_error ArgumentError
        )
      end
    end

    context 'empty array' do
      it 'is already sorted' do
        expect(sorted?([])).to eq true
      end
    end

    context 'a sorted array' do
      it 'returns true' do
        expect(sorted?([1, 2, 3])).to eq true
      end
    end

    context 'an un-sorted array' do
      it 'returns false' do
        expect(sorted?([3, 2, 1])).to eq false
      end
    end

    context 'an array of all the same number' do
      it 'returns true' do
        expect(sorted?([1, 1, 1])).to eq true
      end
    end

    context 'an array of one item' do
      it 'returns true' do
        expect(sorted?([1])).to eq true
      end
    end
  end
end
