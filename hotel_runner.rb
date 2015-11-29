require 'pry-byebug'

require_relative 'hotel'
require_relative 'room'
require_relative 'guest'


standard_hotel=Hotel.new("The Palms", 30)

#Mr_Smith = Guest.new(6)

# def room_look_up(room_number)
#   room_number = room_number + 1

# end  

def check_in(room_num,*guest)
@rooms.room_look_up(room_num).add_guests(guest)

end  











binding.pry;''