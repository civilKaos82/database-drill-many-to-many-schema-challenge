class Review
  attr_reader :score, :description

  def initialize(args)
    @score = args.fetch(:score)
    @description = args.fetch(:description)
  end
end
