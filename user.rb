class User
  attr_reader :email, :username, :reviews, :favoritings

  def initialize(args)
    @email = args.fetch(:email)
    @username = args.fetch(:username)
    @reviews = Array.new
    @favoritings = Array.new
  end

  def add_review(review)
    reviews << review if self == review.author
  end

  def add_favoriting(favoriting)
    favoritings << favoriting if self == favoriting.favoritor
  end
end
