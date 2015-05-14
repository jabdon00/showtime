class MoviePolicy
  attr_reader :user

  def initialize(user,movie)
    @user = user
    @movie = movie
  end

  def create?
    is_admin?
  end
  def new?
    is_admin?
  end
  def edit?
    is_admin?
  end
  def update?
    is_admin?
  end
  def destroy?
    is_admin?
  end
  def insert_mode?
    is_admin?
  end

  def show?
    true
  end
  def index?
    true
  end

  private

  def is_admin?
    if (user.present?)
      return user.has_role? :admin
    else
      return false
    end
  end

end