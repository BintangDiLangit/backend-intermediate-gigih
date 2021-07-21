require_relative 'person'
require_relative 'playablecharacter'
require_relative 'villain'
require_relative 'hero'
require_relative 'mongol'
require_relative 'game'


# Hero
jin = PlayableCharacter.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
sensei = Hero.new("Sensei Ishikawa", 80, 60)

# Villain
mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordman = MongolSwordsman.new("Mongol Swordsman", 100, 50)

game = Game.new(jin)
game.add_hero(yuna)
game.add_hero(sensei)
game.add_villains(mongol_archer)
game.add_villains(mongol_spearman)
game.add_villains(mongol_swordman)
game.start
