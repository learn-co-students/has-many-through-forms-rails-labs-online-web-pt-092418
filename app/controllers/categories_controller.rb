class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

   def create
    @category = Category.create(comment_params)
    redirect_to comment_path(@comment)
  end

   def show
    @category = Category.find(params[:id])
  end
end
