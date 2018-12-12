class User < ApplicationRecord
    has_many :histories
    validates :email, uniqueness: true
end
