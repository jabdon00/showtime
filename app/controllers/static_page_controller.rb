class StaticPageController < ApplicationController
  def index
  end
  def admin_panel
    if (current_user.present?)
      if !(current_user.has_role? :admin)
        redirect_to root_path
      end
      else
        redirect_to root_path
    end
  end
end
