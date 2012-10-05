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
      # Get the latest file from here: http://www.unitedstateszipcodes.org/zip_code_database.csv
      line = nil
      File.open("#{ROOT}/locales/postal_codes.usa") do |file|
        lines = file.readlines
        line  = lines[Random.rand(lines.size)]
      end
      line.split(',').collect! { |x| x.strip.gsub(/,/, '') }
    end
    def address
      @street + "\n" + @city + ", " + @state + " " + @zip
    end
    def to_s
      address
    end
  end
end
