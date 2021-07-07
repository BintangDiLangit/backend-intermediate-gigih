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
    def deflect_attack(percent,other_person)
        pcr = rand(20..80);
        finalAtk = other_person.attack_damage - (other_person.attack_damage * (pcr.to_f / 100.to_f ))
        @hitpoint += other_person.attack_damage-finalAtk.to_i
        puts "#{name} deflect the #{pcr}% attack damage from #{other_person.name}"
        # puts "finalAtk : #{finalAtk}"
        # puts "persen : #{pcr}"
        # puts "Other attack : #{other_person.attack_damage}"
        # puts "hitpoint #{@hitpoint}"
    end

end



