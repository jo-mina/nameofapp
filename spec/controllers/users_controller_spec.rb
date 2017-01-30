require 'rails_helper'

describe UsersController, :type => :controller do 
	before do
		#used factory :user from user_factory.rb file
		@user = FactoryGirl.create(:user)
	end

	describe 'GET #show' do
		context "User is logged in" do
			before do
				sign_in(@user)
			end
			it 'should load the page of the current user' do
				get :show, id: @user.id
				expect(response).to be_success
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end

		context "No user is logged in" do
			it 'redirects to login' do
				get :show, id: @user.id
				expect(response).to redirect_to('/users/sign_in')
			end
		end
		
	end
end