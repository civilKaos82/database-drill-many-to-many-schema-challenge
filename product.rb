class Product
  attr_reader :name, :description, :reviews

  def initialize(args)
    @name = args.fetch(:name)
    @description = args.fetch(:description)
    @reviews = Array.new
  end

  def add_review(review)
    reviews << review
  end
end
