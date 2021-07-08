                if numberAttack == 1
                    jin.attack(mongol_archer)
                    if mongol_archer.die? || mongol_archer.flee?
                        villains.delete(mongol_archer) 
                    end
                elsif numberAttack == 2
                    jin.attack(mongol_spearman)
                    if mongol_spearman.die? || mongol_spearman.flee?
                        villains.delete(mongol_spearman) 
                    end
                elsif numberAttack == 3
                    jin.attack(mongol_swordman)
                    if mongol_swordman.die? || mongol_swordman.flee?
                        villains.delete(mongol_swordman) 
                    end
                else
                    puts "Wrong Input!"
                end