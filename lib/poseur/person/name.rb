module Person
  class Name
    attr :first
    attr :middle
    attr :last
    def initialize
      @first, @middle, @last = Faker::Name.first_name, Faker::Name.first_name, Faker::Name.last_name
    end
  end
end