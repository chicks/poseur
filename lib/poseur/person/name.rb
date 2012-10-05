module Person
  class Name
    attr :first
    attr :middle
    attr :last
    def initialize
      @first, @middle, @last = Faker::Name.first_name, Faker::Name.first_name, Faker::Name.last_name
    end
    def name(middle_initial=false)
      middle_initial ? @first + " " + @middle[0] + " " + @last : @first + " " + @last 
    end
    def to_s
      name
    end
  end
end