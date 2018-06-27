class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = Song.new
    song.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
