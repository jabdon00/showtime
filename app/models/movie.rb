class Movie < ActiveRecord::Base
  has_many :category
  validates :name, presence: true
  validates :category_id, presence: true
  mount_uploader :poster, PosterUploader
  ratyrate_rateable "user_rate"
  has_many :movie_comment
end
