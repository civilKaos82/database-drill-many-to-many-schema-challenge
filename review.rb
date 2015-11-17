class Review
  attr_reader :score, :description, :author, :product

  def initialize(args)
    @score = args.fetch(:score)
    @description = args.fetch(:description)
    @author = args.fetch(:author)
    @product = args.fetch(:product)

    add_self_to_authors_reviews
    add_self_to_products_reviews
  end

  private
  def add_self_to_authors_reviews
    author.reviews << self
  end

  def add_self_to_products_reviews
    product.reviews << self
  end
end
