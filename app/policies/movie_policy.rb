class MoviePolicy
  attr_reader :user

  def initialize(user, post)
    @user = user
  end

  def create?
    user.has_role? :admin
  end
  def new
    user.has_role? :admin
  end
  def edit
    user.has_role? :admin
  end
  def update
    user.has_role? :admin
  end
  def destroy
    user.has_role? :admin
  end
  def insert_mode
    user.has_role? :admin
  end
  def show
    true
  end
  def index
    true
  end

end