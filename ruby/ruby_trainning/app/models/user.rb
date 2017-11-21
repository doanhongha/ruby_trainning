class User < ApplicationRecord
	validates :email, length: {in: 4..255}, presence: true, uniqueness: {case_sensitive: false}, 
	format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Format error!"}

	validates :name, presence: true, length: {in: 4..255}

	has_secure_password
end
