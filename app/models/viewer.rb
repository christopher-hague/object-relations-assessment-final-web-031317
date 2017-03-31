class Viewer
  # first + last name given as accessor
  attr_accessor :first_name, :last_name
  attr_reader :name, :reviews

  ALL = []

  # initializes with name only
  def initialize(name)
    @name = name
    @reviews = []
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    ALL.find { |viewer| viewer.name == name }
  end

  # given full name
  def full_name
    "#{first_name} #{last_name}"
  end

  # complete basics from other classes first
  def create_rating(score, movie)
    new_rating = Rating.new(self, movie)
    new_rating.score = score
    movie.ratings << self
    self.reviews << new_rating
    new_rating
  end
end
