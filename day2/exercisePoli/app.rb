require_relative 'person'
require_relative 'hero'
require_relative 'mongol'
require_relative 'hero'

jin = Hero.new("Jin Sakai", 100, 50)

khotun = Person.new("Khotun Khan", 500, 50)

mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordman = MongolSwordsman.new("Mongol Swordsman", 100, 50)

villains = [mongol_archer, mongol_spearman, mongol_swordman]

i = 1
until (jin.die? || villains.empty?) do
    puts "========= Turn #{i} ==========\n"
    puts jin
    villains.each do |v|
        puts v
    end
    puts "\n"

    jin.attack(villains[rand(villains.size)])
    villains.each do |v|
        villains.delete(v) if v.die? || v.flee?  
    end
    puts "\n"

    villains.each do |v|
        v.attack(jin)
    end
    puts "\n"

    i += 1
end