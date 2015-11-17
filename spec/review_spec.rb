require_relative 'spec_helper'

describe Review do
  let(:review) { Review.new(score: 3, description: 'It works well.') }

  it 'has a score' do
    expect(review.score).to eq 3
  end

  it 'has a description' do
    expect(review.description).to eq 'It works well.'
  end
end
