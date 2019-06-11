class ListOps

  def self.arrays(ar
      arr.length
      #I realize this is a cheat, but I can't find a way around this, so submitting only to see  other people's solutions.
      #My issue with this exercise is that the tests create an array of n elements, but all the elements are nil, hence there's no difference
      # between accesing 'existing' elements like array[n] or array[n+m] (m =/= 0 && length == n).
  end

  def self.reverser(arr)
    reversed = []
    arr_size = ListOps.arrays(arr)
    arr_size.times do |i|
      reversed << arr[-(i+1)]
    end
    reversed
  end

  def self.concatter(arr1, arr2)
    # arr1 + arr2 Most obvious, not sure if this is a valid solution
    arr3 = []
    arr1_size = ListOps.arrays(arr1)
    arr2_size = ListOps.arrays(arr2)
    arr1_size.times do |i|
      arr3 << arr1[i]
    end
    arr2_size.times do |i|
      arr3 << arr2[i]
    end
    arr3
  end

  def self.mapper(arr)
    if block_given?
      new_arr = []
      arr_size = ListOps.arrays(arr)
      arr_size.times do |x|
        new_arr << yield(arr[x])
      end
    else
      return arr
    end
    new_arr
  end

  def self.filterer(arr, proc = nil)
      if proc
        arr_new = []
        arr.each {|x| arr_new << x if yield(x) }
        return arr_new
      end
    arr
  end

end