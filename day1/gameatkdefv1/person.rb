class Person
    attr_reader :name, :hitpoint, :attack_damage
    def initialize(name,hitpoint,attack_damage)
        @name = name #variable global
        @hitpoint = hitpoint #variable global
        @attack_damage = attack_damage ##variable global
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        if other_person.name == 'Jin Sakai'
            other_person.deflect_attack(@attack_damage)
            puts "#{name} attack #{other_person.name} with #{@attack_damage} damage"
            puts "#{other_person.name} deflect the attack from #{name}"
        else
            puts "#{name} attack #{other_person.name} with #{@attack_damage} damage"
            other_person.take_damage(@attack_damage)
        end 
    end
    def take_damage(damage)
        @hitpoint -= damage
    end
    
    def die?
        if @hitpoint <= 0
            puts "#{@name} dies"
            true
        end
    end
    def deflect_attack(dmg)
        ream = (dmg * (80.to_f / 100.to_f ))
        @hitpoint -= dmg-ream.to_i
        puts "hitpoint #{@hitpoint}"
    end

end



