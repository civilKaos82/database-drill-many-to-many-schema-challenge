class Product
  attr_reader :name, :description

  def initialize(args)
    @name = args.fetch(:name)
    @description = args.fetch(:description)
  end
end
