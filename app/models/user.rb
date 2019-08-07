class User < ApplicationRecord
  validates_presence_of :name,
                        :role, presence: true

  validates :email, uniqueness: true, presence: true

  enum role: ["sales", "manager", "admin"]

  has_secure_password
end
