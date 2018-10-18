class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist if !(@@artists.include?(artist))
    @genre = genre
    @@genres << genre if !(@@genres.include?(genre))
    @@count += 1
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    return @@artists
  end
  
  def self.genres
    return @@genres
  end
  
  
end