# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map {|attendee| badge_maker(attendee)}
end

def assign_rooms(attendees)
  assignment = []
  attendees.each_with_index {|attendee, i|
    assignment.push("Hello, #{attendee}! You'll be assigned to room #{i+1}!")
  }
  assignment
end

def printer(attendees)
  batch_badge_creator(attendees).each {|assignment| puts assignment}
  assign_rooms(attendees).each {|assignment| puts assignment}
end
