class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.create(content: comment_params[:content], user_id: params[:user_id] , movie_id: params[:movie_id])
  end


private
def comment_params
  params.require(:comment).permit(:content)
end

end
