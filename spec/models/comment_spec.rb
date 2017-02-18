require 'rails_helper'

describe Comment do
	before do
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: "test@bikesgalores.com", password: "123456")
	end

    context "is a valid rating" do
    	let(:comment) {@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")}

    	it "should return as a valid comment" do
      		expect(@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")).to be_valid
      	end
    end

    context "no body present in comment" do
    	let(:comment) {@product.comments.new(rating: 1, user: @user)}

    	it "should return as invalid comment" do
      		expect(@product.comments.new(rating: 1, user: @user)).not_to be_valid
      	end
    end

    context "no rating present in comment" do
    	let(:comment) {@product.comments.new(user: @user, body: "Awful bike!")}

    	it "should return as invalid comment" do
      		expect(@product.comments.new(user: @user, body: "Awful bike!")).not_to be_valid
      	end
    end

    context "no user logged in" do
    	let(:comment) {@product.comments.new(rating: 1, body: "Awful bike!")}

    	it "should return as invalid comment" do
      		expect(@product.comments.new(rating: 1, body: "Awful bike!")).not_to be_valid
      	end
    end

end

