class UpvotesController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @product.upvotes.create! user: current_user

    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

  def destroy
    upvotes = Upvote.find(params[:id])
    @product = upvotes.product

    upvotes.destroy

    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

end
