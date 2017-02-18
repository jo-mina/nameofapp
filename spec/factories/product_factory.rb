FactoryGirl.define do
	
	#factory used to create a product
	factory :product do
		name "Gold"
  		description "kids bike"
  		image_url "https://i.imgsafe.org/67562d0b6f.jpg"
  		colour "blue"
  		price "250.00"
	end

	factory :invalid_product, parent: :product do |f|
  		f.name nil
	end

end

 