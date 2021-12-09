class User < ApplicationRecord
	validates :user_email, uniqueness: true
end
