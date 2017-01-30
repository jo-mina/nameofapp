FactoryGirl.define do
	#sequence used to increment email
	sequence(:email) { |n| "user#{n}@bikesgalore.com"}

	#factory used to create a user
	factory :user do
		email 
		password "123456"
		first_name "Peter"
		last_name "Example"
		admin false
	end

	#factory used to create an admin user
	factory :admin, class: User do
		email 
		password "12345678"
		first_name "Peter"
		last_name "Admin"
		admin true
	end
end