class CategoriesController < ApplicationController
    # Get all categories
    def index
        @categories = Category.all
    end

    # Create new category
    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else 
            render :new
        end
    end

    # Edit and find category based on ID
    def edit
        @category = Category.find(params[:id])
    end     

    # Update existing product
    def update
      @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path
        else 
            render :edit
        end
    end

    # Delete existing category
    def delete
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    # Private Product parameter definition and accepted values
    private
        def category_params
           params.require(:category).permit(:name, :keywords) 
        end

    # This was commented because I wanted to create the CRUD by myself.
    # resources :categories

end