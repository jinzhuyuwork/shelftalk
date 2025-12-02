class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [ :create ]

  def create
    @product = Product.find(params[:product_id])
    params = comment_params.dup
    params[:user_id] = current_user.id
    @comment = @product.comments.create(params)
    redirect_to @product
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to @product
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
