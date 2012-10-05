module Person
  class Phone
    attr :number, true
    attr :type, true
    attr :locale, true
    
    def initialize(type=:home, locale=nil)
      @type     = type
      @locale   = locale 
      if locale
        @locale = locale
        @number = number_for_locale
      else
        @locale, @number = random_locale_and_number
      end
    end
    
    def number_for_locale
      random_area_code_for_locale.to_s << (1_000_000 + Random.rand(10_000_000 - 1_000_000)).to_s
    end
    
    def random_line_from_postal_code_file
      line = nil
      File.open("#{ROOT}/locales/postal_codes.usa") do |file|
        lines = file.readlines
        line  = lines[Random.rand(lines.size)]
      end
      line.split(',').collect! { |x| x.strip }
    end
    
    def random_area_code_for_locale
      
    end
    
  end
  
  class AreaCodeMap
    def initialize
      @area_codes = File.read("#{ROOT}/locales/area_codes.usa").collect! {|line| line.split(',')}
    end
  end
  
end
