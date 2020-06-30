require 'set'
require 'byebug'
class MaxIntSet
  attr_accessor :store, :max
  def initialize(max)
      @max = max
      @store = Array.new(max, false) # array where idx corrisponds to number and the value id wether that exists
  end

  def insert(num)
    #check to see if in range 
    raise "Out of bounds" if num < 0 || num > @max
      @store[num] = true
  end


  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return true if @store[num]
    false
  end

  private

  def is_valid?(num)
    return false if num < 0 || num > @max
    
  end

  def validate!(num)
  end
end


class IntSet
  attr_accessor :num_buckets, :store
  
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    # debugger
    self[num] << num
  end

  def remove(num)
    #remove num 
    #if num is there we delete it 
    #self[num] ----> [1, 41, 61] ----> any el equal num

    # if self[num].include?(num) 
    #   self[num].delete(num)
    # end

    self[num].delete(num) if self[num].include?(num) 
  end

  def include?(num)
    arr = self[num]
    #debugger
    return false if arr.empty?
    arr.each {|n| return true if n == num}
    false 
  end


  private
  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    mid = num % num_buckets
    @store[mid]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    # if count < @store.length
    #   self[num] << num
    #   count += 1
    # else 
    #   #resize!
    # end

  end

  def remove(num)
  end

  def include?(num)
    # return false if count == 0
    arr = self[num]
    return false if arr.empty?
    arr.each {|n| return true if n == num}
    false 
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    mid = num % num_buckets
    @store[mid]
  end

  def num_buckets
    @store.length
  end

  def resize!
    # @store.length > count # => T/F value
    #store.length to always be greater than the count
  end
end
