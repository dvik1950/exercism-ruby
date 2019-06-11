class Series

    attr_accessor :value

  def initialize(value)
    @value = value
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > value.length
    slices_array = []
    (value.length + 1 - slice_length).times do |i|
      slices_array << value[i..slice_length-1+i]
    end
    slices_array
  end

end