require_relative 'spec_helper'

describe User do
  let(:user) { User.new(email: 'username@domain.com', username: 'superuser') }

  it 'has an email address' do
    expect(user.email).to eq 'username@domain.com'
  end

  it 'has a username' do
    expect(user.username).to eq 'superuser'
  end

  describe 'reviewing products' do
    let(:review) { double('review') }

    it 'has a collection of reviews' do
      expect(user.reviews).to match_array []
    end

    it 'can add a review' do
      expect(user.reviews).to_not include review
      user.add_review(review)
      expect(user.reviews).to include review
    end
  end
end
