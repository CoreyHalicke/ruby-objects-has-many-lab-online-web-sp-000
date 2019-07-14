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
    if artist.name.try == false
      nil
    else
      artist.name
    end
  end
end
