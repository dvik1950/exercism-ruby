class FlattenArray

  def self.flatten(array)
     flat(array).compact
  end

  def self.flat(arr)
    arr.flatten!
    arr.each do |a|
      flat(a) if a.kind_of?(Array)
    end
  end

end

module BookKeeping
  VERSION = 1
end


