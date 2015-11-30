require 'pry-byebug'

require_relative 'hotel'
require_relative 'room'
require_relative 'guest'


standard_hotel=Hotel.new("The Palms", 30)

standard_hotel.check_in(12,"Mr Man", 4)

puts "#{standard_hotel.room_look_up(12)[:guests][0][:name]}"







binding.pry;''