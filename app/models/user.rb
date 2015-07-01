class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true

	after_initialize :defaults

	def defaults
		self.is_admin = false if self.is_admin.nil?
	end
end