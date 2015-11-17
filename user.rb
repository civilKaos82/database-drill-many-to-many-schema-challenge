class User
  attr_reader :email, :username, :reviews, :favoritings

  def initialize(args)
    @email = args.fetch(:email)
    @username = args.fetch(:username)
    @reviews = Array.new
    @favoritings = Array.new
  end

  def add_review(review)
    reviews << review
  end

  def add_favoriting(review)
    favoritings << review
  end
end
