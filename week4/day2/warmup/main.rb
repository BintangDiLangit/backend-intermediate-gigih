require_relative 'tes.rb'

RSpec.describe Tes do
  it 'is cool' do
    tes = Tes.new

    taste = tes.taste?

    # expect(taste).to eq('is delicious')
    expect(taste).to be true

  end
end

