class Review
  attr_reader :score, :description, :author, :product, :favoritings

  def initialize(args)
    @score = args.fetch(:score)
    @description = args.fetch(:description)
    @author = args.fetch(:author)
    @product = args.fetch(:product)
    @favoritings = Array.new

    add_self_to_authors_reviews
    add_self_to_products_reviews
  end

  def add_favoriting(favoriting)
    favoritings << favoriting if self == favoriting.review
  end

  private
  def add_self_to_authors_reviews
    author.reviews << self
  end

  def add_self_to_products_reviews
    product.reviews << self
  end
end
