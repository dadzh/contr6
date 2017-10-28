class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    @comment.user_id = current_user.id
    
    if @comment.save
      redirect_to @photo
    else
      flash.now[:danger] = "error while saving comment"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :score)
  end

end