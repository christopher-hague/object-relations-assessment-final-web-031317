class Movie
  # title given as accessor
  attr_accessor :title, :movies, :viewers
  attr_reader :ratings

  ALL = []

  # initializes with title only
  def initialize(title)
    self.title = title
    @ratings = []
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    ALL.find { |movie| movie.title == title }
  end

  # def ratings
  #   self.ratings
  # end

  # def viewers
  #   self.viewers
  # end

  # finish after others
  def average_rating
    self.ratings.reduce(0.0) { |sum, score| sum += score } / self.ratings.length
  end

end
