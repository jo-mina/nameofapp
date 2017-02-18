require 'rails_helper'

describe ProductsController, :type => :controller do 
	

	describe 'GET #show' do
		before do
			@product = Product.create!(id: '12', name: "race bike")
		end

		it 'should assign the requested product to @product' do
			get :show, id: @product.id
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(@product.id) == @product		
		end

		it 'renders the #show view' do
			get :show, id: @product.id
			expect(response).to render_template :show
		end


	end

	describe 'GET #index' do
		it 'displays a list of products' do
			product = FactoryGirl.create(:product)
			get :index
			assigns(:products).should eq([product])
		end

		it 'renders the :index view' do
			get :index
			expect(response).to render_template :index
		end
	end

	describe 'POST #create' do
		context 'with valid attributes' do
			it 'saves the new product' do
				expect{post :create, product: FactoryGirl.attributes_for(:product)}.to change(Product,:count).by(1)
			end
		end

		it 'redirects to the new product' do
			post :create, product: FactoryGirl.attributes_for(:product)
			expect(response).to redirect_to Product.last
		end

		context 'with invalid attributes' do
			it 'does not save the new product' do
				expect{post :create, product: FactoryGirl.attributes_for(:invalid_product)}.to_not change(Product, :count)
			end
		end
	end

	describe 'GET #new' do
		before do
			@product = FactoryGirl.create(:product, name: "Silver Trekker", description: "Mountain Bike", image_url: "https://i.imgsafe.org/67562d0b6f.jpg", colour: "silver", price: "350.00")
		end

		it 'assigns a new name to a product' do
			get :new
			assigns(:product).name == "Silver Trekker"
		end
	end

	describe 'PUT #update' do
		before do
			@product = FactoryGirl.create(:product)

		end

		context 'valid attributes' do
			it 'changes the products attributes' do
				put :update, id: @product, product: FactoryGirl.attributes_for(:product, name: "Gold Trekker", description: "Mountain Bike")
				@product.reload
				expect(@product.name).to eq("Gold Trekker")
				expect(@product.description).to eq("Mountain Bike")
			end
		end
	end

	describe 'DELETE #destroy' do
		before do
			@product = FactoryGirl.create(:product)
		end

		it 'deletes product' do
			expect{delete :destroy, id: @product}.to change(Product, :count).by(-1)
		end
	end
end 