# require 'first_ttd_spec'
require 'byebug'
def my_uniq(array)
    uniq = []
        array.each do |el|
            if !uniq.include?(el)
                uniq << el
            end
        end
    uniq
    array.uniq
end

def two_sum(array)
    pairs = []
    (0...array.length).each do |idx1|
        (idx1 + 1...array.length).each do |idx2|
            # if idx2 > idx1 && 
            if (array[idx1] + array[idx2] == 0)
                pairs << [idx1, idx2]
            end
        end
    end
    return pairs
end


def my_transpose(array)
    new_arr = []
    (0...array.length).each do |i1|
        sub_arr = []
        (0...array.length).each do |i2|
            sub_arr << array[i2][i1]
        end
        new_arr << sub_arr
    end
    new_arr
    # a = array.transpose
    # a
end

def stock_picker(array)

    #[8,2,1,2,5,6,7]
    # we need an array that contains the prices
    # assume one element is price of stock for one day
    # we are looking for the greatest diffrence where we make the most profit
    # most_money counter = 0
    # as we iderate we check to see if the disrectencey between two prices is more than most money counter 
        # if it is we re assign

    most_money = 0
    most_profitable = []

    (0...array.length).each do |idx1|
        (idx1+1...array.length).each do |idx2|
            if array[idx2] - array[idx1] > most_money
                most_money = array[idx2] - array[idx1]
                most_profitable = [idx1, idx2]
            end
        end
    end
    most_profitable

    # most_money = 0
    # most_profitable = []

    # (0...array.length).each do |idx1|
    #     (1...array.length).each do |idx2|
    #         if array[idx2] - array[idx1] > most_money
    #             most_money = array[idx2] - array[idx1]
    #             most_profitable = [idx1, idx2]
    #         end
    #     end
    # end
    # most_profitable


end

# def towers_of_hanoi
#     # we are given 3 pegs that are stack ADT
#  # we start with all numbers being arranged with first idx being the smallest value for A array
#  # B array and C array are empty
#  # We can never have a bigger number on a smaller number

#  a1 = [1,2,3,4,5]
#  a2 = []
#  a3 = []

#  p "chosse tower to move from A, B, C and tower to move to example 'A C'"
#  p " Tower a1 = #{a1}, a2 = #{a2}, a3 = #{a3} "
#  from_tower, to_tower  = gets.chomp.split # A to C

# #  case from_tower
# #     when "A" 
# #         move(a1, a2)
# #     when "B"
# #         a2.shift
# #     when "C"
# #         a3.shift
# #     end 

# arr1_copy = arr1.dup

# if from_tower == "a1" && to_tower == "a2"
#     move(a1, a2)
# elsif from_tower == "a1" && to_tower == "a3"
#     arr_val = move(a1,a3)
#     a1 = arr_val[0]
#     a2 = arr_val[1]
# elsif from_tower == "a2" && to_tower == "a1"
#     move(a2, a1)
# elsif from_tower == "a1" && to_tower == "a2"
#     move(a1, a2)
# elsif from_tower == "a3" && to_tower == "a1"
#     move(a3, a1)
# elsif from_tower == "a3" && to_tower == "a2"
#     move(a3, a2)
# else
#     raise "No posible move with user input"
# end

def move(arr1, arr2)
    
    # ele =  arr1.shift
    # if arr2.empty? || ele < arr2[0]
    #     arr2.unshift(ele)
    #     return arr1, arr2
    # else
    #     raise "invalid move"
    # end
end

# def won?(arr1_copy, arr2, arr3)
#     return true if arr2 == arr1_copy || arr3 == arr1_copy
#     false
# end





