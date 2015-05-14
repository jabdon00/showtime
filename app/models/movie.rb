class Movie < ActiveRecord::Base
  has_many :category
  validates :name, presence: true
  validates :category_id, presence: true
  mount_uploader :poster, PosterUploader
end
