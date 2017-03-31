class Rating
  # score given as accessor
  attr_accessor :score, :viewer, :movie

  ALL = []

  def initialize(viewer, movie)
    @viewer = viewer
    @movie = movie
    ALL << self
  end

  def self.all
    ALL
  end


end

=begin

tony = Viewer.new("Tony")
congo = Movie.new("Congo")
couch_review = Rating.new(tony, congo)
tony.create_rating(5, congo)

=end
