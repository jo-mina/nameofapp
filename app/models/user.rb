class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :orders

	#after create user send a confrimation email to their inbox
	after_create :welcome_send
	def welcome_send
		WelcomeMailer.welcome_send(self).deliver
	end

end
