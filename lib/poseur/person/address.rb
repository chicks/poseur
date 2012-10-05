module Person
  class Address
    attr :street
    attr :city
    attr :state
    attr :zip
    def initialize
      @street = Faker::Address.street_address
      @zip, @city, @state = random_line_from_postal_code_file
    end
    def random_line_from_postal_code_file
      line = nil
      File.open("#{ROOT}/locales/postal_codes.usa") do |file|
        lines = file.readlines
        line  = lines[Random.rand(lines.size)]
      end
      line.split(',').collect! { |x| x.strip }
    end
  end
end
