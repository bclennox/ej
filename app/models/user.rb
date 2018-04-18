class User < ApplicationRecord
  has_secure_password

  def self.authenticate(username, password)
    find_by(username: username)&.authenticate(password)
  end

  def name
    username.capitalize
  end
end
