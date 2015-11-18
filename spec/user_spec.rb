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
    let(:authored_review) { double('review', { author: user}) }
    let(:unauthored_review) { double('review', { author: double('other user') }) }

    it 'has a collection of reviews' do
      expect(user.reviews).to match_array []
    end

    it 'can add a review' do
      expect(user.reviews).to_not include authored_review
      user.add_review(authored_review)
      expect(user.reviews).to include authored_review
    end

    it 'does not add a review it did not author' do
      expect(user.reviews).to_not include unauthored_review
      user.add_review(unauthored_review)
      expect(user.reviews).to_not include unauthored_review
    end
  end

  describe 'favoriting reviews' do
    let(:favoriting) { double('favoriting') }

    it 'has a collection of favoritings' do
      expect(user.favoritings).to match_array []
    end

    it 'can add a favoriting' do
      expect(user.favoritings).to_not include favoriting
      user.add_favoriting(favoriting)
      expect(user.favoritings).to include favoriting
    end
  end
end
