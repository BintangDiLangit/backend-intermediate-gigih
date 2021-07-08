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
        other_person.take_damage(@attack_damage)
        puts "#{name} attack #{other_person.name} with #{@attack_damage} damage"
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
end



