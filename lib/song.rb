class Song
  attr_accessor :name, :artist, :artist_name


  def initialize(attributes)
    @name = attributes
    @artist = attributes
    @artist_name = nil
    @@all << self
  end
  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
   song = file_name.split(" - ")[1]
   artist = file_name.split(" - ")[0]
   new_song = self.new(song)
   artist = Artist.new(artist)
   artist.songs << new_song
   new_song.artist = artist
   new_song
 end

 def artist_name(name)
   binding.pry
  @artist = Artist.new(name)
 end

end
