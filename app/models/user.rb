class User < ApplicationRecord
  validates :user_name, presence: true, length: { minimum: 3, maximum: 12 }, uniqueness: { case_sensitive: false }
  has_many :messages
  has_secure_password
end
