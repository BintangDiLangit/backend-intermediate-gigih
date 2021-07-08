require_relative 'person'

class Hero < Person
  def initialize(name, hitpoint, attack_damage)
    super(name,hitpoint, attack_damage)

  end

end