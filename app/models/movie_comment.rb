class MovieComment < ActiveRecord::Base
  validates :comment,presence: true
  belongs_to :movie
  belongs_to :user
end
