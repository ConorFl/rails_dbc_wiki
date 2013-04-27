require 'bcrypt'
class User < ActiveRecord::Base
	attr_accessible :name, :email, :password
	include BCrypt

	validates :name, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	has_secure_password
	has_many :posts
	has_many :eats
	has_many :resources
	has_many :shelters

	def password 
		@password ||= Password.new(password_digest)
	end
	def password=(new_password)
		@password = Password.create(new_password)
		self.password_digest = @password
	end
end
