class Calculator
    def add(number1, number2)
        number1 + number2
    end
end

#  polimor karena bisa dipanggil diberbagai primitive 
# duck typing => artinya si bahasa pemrograman dapat langsung mengenal tipe variable yang di masukkan dalam paramater suatu method atau fungsi.
calc = Calculator.new
integer = calc.add(1,2)
puts integer

double = calc.add(1.23,5.44)
puts double

double = calc.add("1.23","5.44")
puts double