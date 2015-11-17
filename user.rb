class User
  attr_reader :email, :username, :reviews

  def initialize(args)
    @email = args.fetch(:email)
    @username = args.fetch(:username)
    @reviews = Array.new
  end

  def add_review(review)
    reviews << review
  end
end
