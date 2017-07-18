class UpvotesController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    product.upvotes.create! user: current_user
    redirect_to products_path
  end

  def destroy
    upvotes = Upvote.find(params[:id])
    upvotes.destroy
    redirect_to products_path
  end

end
