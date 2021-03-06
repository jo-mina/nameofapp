require 'rails_helper'

describe Product do

	before do
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: "test@bikesgalores.com", password: "123456")
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 3, user: @user, body: "Average!")
		@product.comments.create!(rating: 5, user: @user, body: "Fantastic!")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "returns the highest rated comment" do
		expect(@product.highest_rating_comment) == "Fantastic!"
	end

	it "returns the lowest rated comment" do
		expect(@product.lowest_rating_comment) == "Awful bike!"
	end
	
	context "is not valid" do
		let(:product) { Product.new(description: "Nice bike") }

    	it "should return not valid" do
      		expect(Product.new(description: "Nice bike")).not_to be_valid
    	end
	end

end