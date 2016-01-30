class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))
  end
  
  def show
    @category = Category.find(params[:id])
  end
end