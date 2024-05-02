require_relative 'building'

class House < Building 
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end

# my_house = House.new("Casa Le Wagon", 20, 30)
# p my_house
# p my_house.floor_area

# puts House.price_per_square_meter("Paris")

