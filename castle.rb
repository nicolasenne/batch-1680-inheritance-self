# require_relative 'building'

# class Castle < Building
#   attr_accessor :moat

#   def self.categories
#     return ["Medieval", "Norman", "Ancient"]
#   end

#   def has_a_moat?
#     @moat == true
#   end

#   def floor_area
#     super + 300
#   end

# end

# my_castle = Castle.new('Castelo Doido', 200, 300)
# p my_castle.floor_area

# # p my_castle.categories

# puts Castle.categories

# p my_castle.categories


require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_reader :butler, :ruler

  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    @butler = Butler.new(self, 'John')
  end

  def ownership_details
    "#{@name} is ruled by #{ruler}"
  end

  def ruler
    @ruler.capitalize
  end
end

aladdin_castle = Castle.new("The magical Sultan palace", 410, 520, 'Aladdin')

# p aladdin_castle.ownership_details
# p aladdin_castle.butler.clean_castle

p aladdin_castle.butler.name