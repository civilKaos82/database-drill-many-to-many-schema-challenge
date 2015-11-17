class User
  attr_reader :email, :username

  def initialize(args)
    @email = args.fetch(:email)
    @username = args.fetch(:username)
  end
end
