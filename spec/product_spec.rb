require_relative 'spec_helper'

describe Product do
  let(:product) { Product.new(name: 'Mixer', description: 'It mixes.') }

  it 'has a name' do
    expect(product.name).to eq 'Mixer'
  end

  it 'has a description' do
    expect(product.description).to eq 'It mixes.'
  end
end
