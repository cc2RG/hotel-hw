class Hotel

attr_reader :name, :rooms, :room_count, :max_capacity, :guest_register

def initialize(name, number_of_rooms)
@name = name
@rooms = make_rooms(number_of_rooms)
@room_count = @rooms.length
@max_capacity = @room_count
@guest_register = {}
end  

def make_rooms(number_of_rooms)
  number_of_rooms.times.map{ |i| Room.new }

end

def add_room(room)  
  @rooms << room
end

def room_look_up(room_number)
  room_number = room_number - 1
  @rooms[room_number]
end

def new_guest(name, stay)
 {:name=>name, :stay=>stay}
end


def check_in(room_num, name, stay)
  room_look_up(room_num).add_guests(new_guest(name, stay))
  add_to_register(room_num, name)
end  

def add_to_register(room_num, name)
  @guest_register[name] = room_num
end

def remove_from_register(name)
  @guest_register.delete(name)
end  


def check_out(room_num, *name)
  room_look_up(room_num).remove_guests
  remove_from_register(name)
end

def check_vaccancy(room_num)
  room_look_up(room_num) 

end  



end  