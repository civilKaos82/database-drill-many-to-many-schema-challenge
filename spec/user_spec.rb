require_relative 'spec_helper'

describe User do
  let(:user) { User.new(email: 'username@domain.com', username: 'superuser') }

  it 'has an email address' do
    expect(user.email).to eq 'username@domain.com'
  end

  it 'has a username' do
    expect(user.username).to eq 'superuser'
  end
end
