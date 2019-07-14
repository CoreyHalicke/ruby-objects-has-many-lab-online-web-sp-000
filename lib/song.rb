class Song
  attr_accessor :song, :artist
  @@all = []

  def initialize(song)
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    song
  end

  def artist_name
    artist.name
    binding.pry
  end
end
