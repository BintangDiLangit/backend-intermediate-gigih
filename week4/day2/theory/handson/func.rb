class Func 
    def func1(array)
        if array.length == 0
            return [1]
        else
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
                end
            end 
        end
    end
    # arr = []
    # tes = Func.new
    # puts tes.func1(arr)
end