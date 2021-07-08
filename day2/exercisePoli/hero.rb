require_relative 'person'

class Hero < Person
  def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    @deflect_percetage = 0.8
  end


  def take_damage(damage)
    if rand < @deflect_percetage
      puts "#{@name} deflects the attack."
    else
      @hitpoint -= damage
    end
  end
end