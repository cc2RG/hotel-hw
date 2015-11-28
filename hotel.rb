class Hotel

attr_reader :name, :rooms, :room_count

def initialize(name, number_of_rooms)
@name = name
@rooms = make_rooms(number_of_rooms)
@room_count = @rooms.length
end  

def make_rooms(number_of_rooms)
  number_of_rooms.times.map{ |i| Room.new }

end

def add_room(room)  
  @rooms << room
end

def room_look_up(room_number)
  room_number = room_number + 1
  @rooms[room_number]
end


end  