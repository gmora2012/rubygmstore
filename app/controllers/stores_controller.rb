class StoresController < ApplicationController
    # Get all categories
    def index
        @stores = Store.all
    end

    # Create new category
    def new
        @stores = Store.new
    end

    def create
        @store = Store.new(store_params)
        if @store.save
            redirect_to stores_path
        else 
            render :new
        end
    end

    # Edit and find category based on ID
    def edit
        @store = Store.find(params[:id])
    end     

    # Update existing product
    def update
      @store = Store.find(params[:id])
        if @store.update(store_params)
            redirect_to stores_path
        else 
            render :edit
        end
    end

    # Delete existing category
    def delete
        @store = Store.find(params[:id])
        @store.destroy
        redirect_to stores_path
    end

    # Private Store parameter definition and accepted values
    private
        def store_params
           params.require(:store).permit(:name, :street, :number, :zipcode, :city, :country) 
        end

    # This was commented because I wanted to create the CRUD by myself.
    # resources :stores

end
    