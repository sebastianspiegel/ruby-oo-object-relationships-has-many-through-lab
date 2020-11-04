 class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        appointments.collect {|appt| appt.doctor}
    end

    def new_appointment(date, doctor)
        appt = Appointment.new(date, self, doctor)
    end
 end 