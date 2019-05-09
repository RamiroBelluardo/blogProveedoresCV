class CommentsController < ApplicationController
  def create
    @provide = Provide.find(params[:provide_id])
    @comment = @provide.comments.create(comment_params)
    redirect_to provide_path(@provide)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end