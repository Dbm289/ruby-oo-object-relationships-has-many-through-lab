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

    def new_appointment(date, doctor)
        appointment.new(date, doctor, self)

    end

    def appointments
        appointment.map do |date|
            date.patient
        end
    end

end
