require_relative 'person'
require_relative 'hero'
require_relative 'mongol'
require_relative 'hero'

# Hero
jin = MyHero.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
sensei = Hero.new("Sensei Ishikawa", 80, 60)

# Villain
khotun = Person.new("Khotun Khan", 500, 50)

mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordman = MongolSwordsman.new("Mongol Swordsman", 100, 50)

villains = [mongol_archer, mongol_spearman, mongol_swordman]
heroes = [jin,yuna,sensei]
i = 1
until (heroes.empty? || villains.empty?) do
    puts "========= Turn #{i} ==========\n"
    heroes.each do |h|
        puts h
    end
    puts "\n"
    villains.each do |v|
        puts v
    end
    puts "\n"

    h = 0
    while h < heroes.size
        if h == 0
            puts "As Jin Sakai, what do you want to do this turn?"
            puts "1) Attack an enemy"
            puts "2) Heal an ally"
            number = gets.chomp.to_i
            num = 1
            if number == 1
                if villains.empty?
                    puts "Hero Win"
                else
                    villains.each do |v|
                        puts "#{num}) #{v.name}" 
                        num += 1
                    end
                    numberAttack = gets.chomp.to_i-1
                    heroes[h].attack(villains[numberAttack])
                    puts "==="
                    villains.each do |v|
                        villains.delete(v) if v.die? || v.flee?
                    end
                end
            elsif number == 2
                while num < heroes.size
                    puts "#{num}) #{heroes[num].name}" 
                    num += 1
                end
                numberHeal = gets.chomp.to_i
                heroes[h].heal(heroes[numberHeal])
            else 
                puts "Wrong Input!"
            end
        else
            if villains.empty? == false
                v = rand(villains.size)
                puts "=Other="
                heroes[h].attack(villains[v])
                villains.each do |v|
                    villains.delete(v) if v.die? || v.flee?
                end
                puts "=Other="
            end
        end
        h += 1
    end
       
    if villains.empty?
        puts "Hero Win"
    else

        villains.each do |v|
            if v.flee? == false
                h = rand(heroes.size)
                v.attack(heroes[h])
                if heroes[h].die?
                    heroes.delete(heroes[h]) 
                    if heroes.empty?
                        puts "Villain Win"
                    end
                end 
            end
        end
        puts "\n"
    end
    i += 1
end
