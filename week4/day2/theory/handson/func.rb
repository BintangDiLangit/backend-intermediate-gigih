class Func 
    def func1(array)
        for i in array do
            if array[-1] < 9 && array[-1] >= 0
                array[-1] +=1
                break
            elsif array[-1] == 9
                array[-1] = 0
                array[-2] +=1
                break
            end
        end
        return array
    end
end