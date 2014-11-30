require 'set'
s1 = Set.new [1, 2]
s2 = [1, 2].to_set
puts s1 == s2
puts s1.add("foo").inspect
puts s1.merge([2, 6]).inspect
puts s1.subset? s2
puts s2.subset? s1
puts "==================================================================="
puts

s = Set.new(["space", "stars"])
# Add two more elements.
s.add("sun")
s.add("moon")
# Get size.
puts s.size()
# See if Set includes this element.
puts s.include?("stars")
