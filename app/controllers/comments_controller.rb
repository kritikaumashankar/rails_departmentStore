class CommentsController < ApplicationController
  before_action :set_item
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create 
    @comment = @item.comments.new(comment_params)
    if @comment.save
      redirect_to departmental_item_path(@item.departmental_id, @item)
    else
      render :new
    end
  end

  private

    def set_item
      @item = Item.find(params[:item_id])
    end

    def comment_params
      params.require(:comment).permit(:body, :author)
    end

end
