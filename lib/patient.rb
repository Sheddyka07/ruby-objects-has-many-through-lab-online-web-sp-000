class Patient 
  attr_accessor :name, :doctor, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end

  def appointments
    Appointment.all.select {|appt| appt.patients == self}
  end

  def doctors
    appointments.collect {|appt| appt.artist}
  end
end