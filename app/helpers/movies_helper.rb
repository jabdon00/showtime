module MoviesHelper
  def comment_user_find(user_id)
    @user = User.find(user_id)
    return @user.email
  end
end
