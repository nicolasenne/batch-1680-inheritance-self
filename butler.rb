class Butler
  attr_reader :name
  
  def initialize(castle, name)
    @castle = castle
    @name = name
  end

  def clean_castle
    "#{@castle.name} is cleaned!"
  end
end