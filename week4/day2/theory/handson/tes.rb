require_relative 'func.rb'

RSpec.describe Func do
    it 'returns [1 3 8] if passed [1 3 7]' do
        func = Func.new

        arr = [1,3,7]
        result = func.func1(arr)

        expect(result).to eq([1, 3, 8])
    end
    it 'returns [1 4 0] if passed [1 3 9]' do
        func = Func.new

        arr = [1,3,9]
        result = func.func1(arr)

        expect(result).to eq([1, 4, 0])
    end
end