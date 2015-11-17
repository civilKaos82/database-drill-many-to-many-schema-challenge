require_relative 'spec_helper'

describe Review do
  let(:review) { Review.new(score: 3, description: 'It works well.', author: authoring_user, product: reviewed_product) }
  let(:authoring_user) { User.new(email: 'username@domain.com', username: 'superuser') }
  let(:reviewed_product) { Product.new(name: 'Mixer', description: 'It mixes.') }

  it 'has a score' do
    expect(review.score).to eq 3
  end

  it 'has a description' do
    expect(review.description).to eq 'It works well.'
  end

  describe 'the review\'s author' do
    it 'has an author' do
      expect(review.author).to eq authoring_user
    end

    it 'is contained within the author\'s collection of reviews' do
      authors_reviews = review.author.reviews
      expect(authors_reviews).to include review
    end
  end

  describe 'the review\'s product' do
    it 'has a product' do
      expect(review.product).to eq reviewed_product
    end

    it 'is contained within the reviewed products\'s collection of reviewed' do
      reviewed_products_reviews = review.product.reviews
      expect(reviewed_products_reviews).to include review
    end
  end
end
