class Bst

  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def data
    self.value
  end

  def insert(new_value)
    if new_value <= self.value
      self.left.insert(new_value) unless self.left.nil?
      self.left = Bst.new(new_value)
   #   return Bst.new(new_value)
    else
      self.right.insert(new_value) unless self.right.nil?
      self.right = Bst.new(new_value)
   #   return Bst.new(new_value)
    end
  end

end

def record_all_data(bts_node, a = [])
  a << bts_node.value
  record_all_data(bts_node.left, a) unless bts_node.left.nil?
  record_all_data(bts_node.right, a) unless bts_node.right.nil?
  return a
end



module BookKeeping
  VERSION = 1
end

pc = Bst.new(8)
pc.insert(3)
pc.insert(2)
pc.insert(1)
puts pc.left.left.value
