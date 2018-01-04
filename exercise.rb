# Location class
class Location

  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

end

# Trip class
class Trip

  def initialize
    @destinations = []
  end

  def add(location)
    @destinations << location
    return true
  end

  def all
    puts "Began trip."
    count = 0
    # (@destinations.count - 1).times {
    #   puts "Travelled from #{@destinations[count].name} to #{@destinations[count+1].name}"
    #   count += 1
    # }
    @destinations.each_cons(2) {|a,b|
      puts "Travelled from #{a.name} to #{b.name}"
    }
    puts "Ended trip."
  end
end

berlin = Location.new('Berlin')
moscow = Location.new('Moscow')
beijing = Location.new('Beijing')
rio = Location.new('Rio')

my_trip = Trip.new

my_trip.add(berlin)
my_trip.add(moscow)
my_trip.add(beijing)
my_trip.add(rio)

my_trip.all
