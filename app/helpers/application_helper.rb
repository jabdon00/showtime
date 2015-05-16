module ApplicationHelper
  def user_admin?
    if current_user
      if current_user.isAdmin?
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def user_user?
    if current_user
      if current_user.isUser?
        return true
      else
        return false
      end
    else
      return false
    end
  end


end
