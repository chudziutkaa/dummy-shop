class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comments = @product.comments.from_recent
    @comment = @product.comments.new(comment_params)
    @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id, :product_id)
  end
end
