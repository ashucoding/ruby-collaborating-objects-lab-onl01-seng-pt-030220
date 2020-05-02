class Song
  attr_accessor :name, :artist


  def initialize(attributes)
    @name = attributes
    @artist = attributes
    @@all << self
  end
  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
   song = file_name.split(" - ")[1]
   artist = file_name.split(" - ")[0]
   new_song = self.new({song:song, artist:artist})
   #new_song.artist << @artist
   #new_song.artist
   new_song
 end

 def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
 end

end
