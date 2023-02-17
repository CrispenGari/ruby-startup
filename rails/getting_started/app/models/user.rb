class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: %r{/^[A-Za-z]+@([a-zA-Z]+.)+[a-zA-z]+$/}im, message:"invalid email address" }
  validates :username, presence: true, uniqueness: true
end
