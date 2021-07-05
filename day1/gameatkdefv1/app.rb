require_relative 'person'

jin = Person.new("Jin Sakai", 100, 50)
puts jin

khotun = Person.new("Khotun Khan", 500, 50)
puts khotun

while true
    puts "==================="
    jin.attack(khotun)
    puts khotun
    break if khotun.die?
    
    puts "==================="
    khotun.attack(jin)
    puts jin

    break if jin.die?
end