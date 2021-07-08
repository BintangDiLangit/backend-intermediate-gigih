class Dog
    def initialize(breed)
      @breed = breed
    end

    def bark
        puts "Woof woof"
    end
end

class Lab < Dog 
    def initialize(breed, name)
        super(breed) # breed was taken from parent class
        @name = name
    end

    def to_s 
        "(#@breed, #@name)"
    end
    def bark
        puts "Woof woof WOOOO"
        super()
    end
end

laby = Lab.new('Labrador', "Benzy")
laby.bark()
puts laby