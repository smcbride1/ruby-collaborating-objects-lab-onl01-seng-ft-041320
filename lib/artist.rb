class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
    
  def self.find_or_create_by_name(name)
    if self.all.find{|a| a.name == name}
      self.all.find{|a| a.name == name}
    else
      Artist.new(name)
    end
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
end