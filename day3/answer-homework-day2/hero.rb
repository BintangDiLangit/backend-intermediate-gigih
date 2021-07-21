require_relative 'person'

class Hero < Person
  def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    @deflect_percetage = 0.8
    @heal_point = 50
  end

  def take_damage(damage)
    if rand < @deflect_percetage
      deflect
    else
      super(damage)
    end
  end

  def deflect
    puts "#{@name} deflects the attack"
  end

  def heal(other_hero)
    other_hero.take_healing(@heal_point)
  end   

end