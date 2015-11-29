class Room

attr_accessor :room
def initialize(room = {type:nil, guests:nil})
  @room = room
end  

def[](key)
  room[key]
end  

def []=(key, value)
  room[key] = value
end

def add_guests(*name)
  @room[:guests] = name
end

def remove_guests
  @room[:guests] = nil
end

def define_type(type)
  @room[:type] = type
end  

end  