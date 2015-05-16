class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "User"
  belongs_to :rateable, :polymorphic => true
  before_save :update_rate
  #attr_accessible :rate, :dimension
  private
  def update_rate
    if self.rateable_type == "Movie"
      movie_average = Rate.where(rateable_id: self.rateable_id, rateable_type: self.rateable_type).average("stars")
      movie = Movie.find(self.rateable_id)
      movie.update_attributes(userrate: movie_average)
    end
  end
end