# using this class:

# - create a random number of woodchucks

# - have each woodchuck chuck a random amount of wood

# - give a total of how much wood was chucked
require 'ap'

class Woodchuck
  attr_accessor :chuck_count
 
  @@woodchuck_count = 0
  WOODCHUCKS = []
 
  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end
 
  def chuck_wood
    @chuck_count += 1
  end
 
  def self.woodchuck_count
    @@woodchuck_count
  end
 
end


rand(10).times do 
  Woodchuck.new
end


Woodchuck::WOODCHUCKS.each do |woodchuck|
    rand(10).times do woodchuck.chuck_wood
    end
end

count = 0
Woodchuck::WOODCHUCKS.each do |woodchuck|
  var = woodchuck.chuck_count
  count = var + count
end
 ap count



#     count = rand(10).times do 
#      bob.chuck_wood
#   end
#   array = []
#   array << count
#   array.reduce(:+)
#  end
#  ap array
#ap Woodchuck.woodchuck_count

#want to print self woodchuck count

#have a woodchuck chuck a random number of wood

 
# Woodchuck.new
# Woodchuck.new
# Woodchuck.new
# Woodchuck.new
 
# Woodchuck::WOODCHUCKS.each do |woodchuck|
#   woodchuck.chuck_wood
# end
 
# puts Woodchuck::WOODCHUCKS.inspect