class MovieCommentController < ApplicationController
  def create
    if current_user.present?
      @movie_comment = MovieComment.new
      @movie_comment.comment = params[:movie_comment][:comment]
      @movie_comment.movie_id = params[:movie_comment][:movie_id]
      @movie_comment.user_id = current_user.id
      respond_to do |format|
        if @movie_comment.save
          format.js
        else
          format.html { render action: "new" }
        end
      end
    else
      @error = 'برای ارسال نظر باید وارد سایت شوید'
    end
  end

  def new
  end

  private
  def movie_comment_param
    params.require (:movie_comment).permit(:comment, :user_id, :movie_id)
  end
end
