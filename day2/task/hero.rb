require_relative 'person'
require_relative 'mongol'

class Hero < Person
  def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    @deflect_percetage = 0.8
  end

  def take_heal(heal)
    @hitpoint += heal
  end   

  def take_damage(damage)
    if rand < @deflect_percetage
      puts "#{@name} deflects the attack."
    else
      @hitpoint -= damage
    end
  end
end

class MyHero < Hero

  def heal(other_person)
    other_person.take_heal(20)
    puts "#{name} heals #{other_person.name}, restoring 20 hispoint"
  end
end