hash = {"comp1.mydomen.ua"=>"192.168.0.3",
        "comp2.mydomen.ua"=>"192.168.0.1",
        "comp3.mydomen.ua"=>"192.168.0.2"}
puts hash["comp1.mydomen.ua"]
puts hash.values.join ","
puts "==================================================================="
puts

h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
puts h["a"]           #-> 100
puts h["c"]           #-> "Go Fish"
h1=h["c"].upcase!   #-> "GO FISH"
puts h1
puts h["d"]           #-> "GO FISH"
puts h.keys           #-> ["a", "b"]

h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
puts h["c"]           #-> "Go Fish: c"
puts h["d"]           #-> "Go Fish: d"
puts h.keys           #-> ["c", "d"]
