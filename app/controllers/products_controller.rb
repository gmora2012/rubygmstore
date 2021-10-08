class ProductsController < ApplicationController
    # Get all products, search and filter methods 
    def index 
        if params['category']
            if params['category'].blank? or params['category']['id'].blank? 
                @products = Product.search(params[:search])
            else 
                category = Category.find(params['category']['id']) 
                @products = category.products 
            end 
                @products = @products.search(params[:category_id]) 
        elsif params['store'] 
            if params['store'].blank? or params['store']['id'].blank? 
                @products = Product.search(params[:search])
            else 
                store = Store.find(params['store']['id']) 
                @products = store.products 
            end 
                @products = @products.search(params[:store_id]) 
        else
            @products = Product.search(params[:search])
        end
    end

    # Create new product
    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to products_path
        else 
            render :new
        end
    end

    # Edit and find product based on ID
    def edit
        @product = Product.find(params[:id])
    end     

    # Update existing product
    def update
      @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to products_path
        else 
            render :edit
        end
    end

    # Delete existing product
    def delete
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    # Private Product parameter definition and accepted values
    private
        def product_params
           params.require(:product).permit(:name, :color, :category_id, :size, :price, :store_id) 
        end

    # This was commented because I wanted to create the CRUD by myself.
    # resources :products
end
    