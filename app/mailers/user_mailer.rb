class UserMailer < ApplicationMailer
	default from: "noreply@bikesgalore.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => "noreply@bikesgalore.com",
			:to => 'iclejo2k8@yahoo.co.uk',
			:subject => "A new contact form from #{name}")
	end

	def payment_confirmation(user)
		@user = user
		mail(:to => user,
			:from => "sales@bikesgalore.com",
			:subject => "We Have Received Your Payment. Thank You.")
	end
end
