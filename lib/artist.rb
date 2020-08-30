class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end   
  
  def add_song(song)
    song.artist = self
  end   
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end   
  
  def save 
    @@all << self 
  end   
  
  def self.all 
    @@all
  end  
  
  def self.find_or_create_by_name(name)
    @@all.each do |obj|
      if obj.name == name 
        return obj
      end 
    end 
    Artist.new(name)
  end
  
  def print_songs
  Song.all
  print_songs
  end
  
end