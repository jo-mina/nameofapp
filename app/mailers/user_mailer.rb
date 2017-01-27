class UserMailer < ApplicationMailer
	default from: "noreply@bikesgalore.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'iclejo2k8@yahoo.co.uk',
			:subject => "A new contact form from #{name}")
	end
end