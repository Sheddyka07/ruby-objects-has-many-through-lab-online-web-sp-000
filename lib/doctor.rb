class Doctor
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    songs.map {|song| song.genre}
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
end