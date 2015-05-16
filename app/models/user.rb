class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ratyrate_rater
  has_many :movie_comment
  def isAdmin?
    self.has_role? :admin
  end
  def isUser?
     self.has_role? :user
  end
end
