class WelcomeMailer < ApplicationMailer

	def welcome_send(user)
		@user = user
		mail to:user.email, subject: "Welcome to Bikes Galore", from: 'info@bikesgalore.com'
	end
end