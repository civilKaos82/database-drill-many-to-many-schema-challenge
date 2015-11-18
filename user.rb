class User
  attr_reader :email, :username, :reviews, :favoritings

  def initialize(args)
    @email = args.fetch(:email)
    @username = args.fetch(:username)
    @reviews = Array.new
    @favoritings = Array.new
  end

  def add_review(review)
    if self == review.author && !reviews.include?(review)
      reviews << review
    end
  end

  def add_favoriting(favoriting)
    if self == favoriting.favoritor && !favoritings.include?(favoriting)
      favoritings << favoriting
    end
  end
end
