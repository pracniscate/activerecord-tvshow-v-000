class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.find_by rating: highest_rating
  end
end
