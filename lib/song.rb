require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.all=(value)
    @@all = value
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    return song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    return song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    return song
  end

  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if song = self.find_by_name(name)
      return song
    else
      song = create_by_name(name)
      return song
    end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename)
    # accept  "Taylor Swift - Blank Space.mp3"
    # assign name and artist_name attributes
    # return instance of song

  end

  def self.create_from_filename(filename)
    # accept  "Taylor Swift - Blank Space.mp3"
    # assign name and artist_name attributes
    # add object to .all
    # return instance of song

  end

  def self.filename_parser(filename)
    one, two = filename.match(/(^\w+) - (.+).mp3/).captures
    binding.pry
  end

  def self.destroy_all
    self.all = []
  end

end
