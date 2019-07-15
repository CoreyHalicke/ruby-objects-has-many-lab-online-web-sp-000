require "pry"
class Artist
  attr_accessor :name

  @counter = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @counter =+ 1

    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    @counter =+ 1

    new_song = Song.new(song)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    @counter
  end
end
