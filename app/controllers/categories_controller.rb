class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @items = @category.items.paginate(:page => params[:page])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(name: params[:name])
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(name: params[:name])
    category.save
    redirect_to categories_path
  end
  
  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to categories_path
  end
end
