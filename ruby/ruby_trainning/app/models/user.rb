class User < ApplicationRecord
	validates :email, length: {in: 4..255}, presence: true, uniqueness: {case_sensitive: false}, 
	format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Format error!"}

	validates :name, presence: true, length: {in: 4..255}

	has_secure_password
	#return a random token
	def User.new_token
		SecureRandom.urlsafe_base64
	end

	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
