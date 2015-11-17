require_relative 'spec_helper'

describe Product do
  let(:product) { Product.new(name: 'Mixer', description: 'It mixes.') }

  it 'has a name' do
    expect(product.name).to eq 'Mixer'
  end

  it 'has a description' do
    expect(product.description).to eq 'It mixes.'
  end

  describe 'being reviewed' do
    let(:review) { double('review') }

    it 'has a collection of reviews' do
      expect(product.reviews).to match_array []
    end

    it 'can add a review' do
      expect(product.reviews).to_not include review
      product.add_review(review)
      expect(product.reviews).to include review
    end
  end
end
