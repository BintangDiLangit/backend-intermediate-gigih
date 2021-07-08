require_relative 'person'

jin = Defense.new("Jin Sakai", 100, 50)
puts jin

khotun = Defense.new("Khotun Khan", 500, 50)
puts khotun

while true
    puts "==================="
    jin.attack(khotun)
    puts khotun
    break if khotun.die?
    
    puts "==================="
    khotun.attack(jin)
    break if jin.die?
    jin.deflect_attack(80,khotun)
    puts jin
end