class Func 
    def func1(array)
        for i in array do
            if array[-1] < 9 && array[-1] >= 0
                array[-1] +=1
                return array
                break
            elsif array[-1] == 9
                array[-1] = 0
                array[-2] +=1
                return array
                break
            elsif array == []
                return [1]
            end
        end 
    end
end