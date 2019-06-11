class Triplet

  attr_accessor :a_side, :b_side, :c_side

  def initialize(a_side, b_side, c_side)
    array_of_sides = [a_side, b_side, c_side].sort
    @a_side = array_of_sides[0]
    @b_side = array_of_sides[1]
    @c_side = array_of_sides[2]
  end

  def sum
    a_side + b_side + c_side
  end

  def product
    a_side * b_side * c_side
  end

  def pythagorean?
    a_side ** 2 + b_side ** 2 == c_side ** 2 || a_side ** 2 + c_side ** 2 == b_side ** 2 || c_side ** 2 + b_side ** 2 == a_side ** 2
  end

  def self.where(args)
    args[:min_factor] = 1 unless args[:min_factor]
    array_of_triplets = []
    (args[:min_factor]..args[:max_factor]).each do |a|
      (args[:min_factor]..args[:max_factor]).each do |b|
        (args[:min_factor]..args[:max_factor]).each do |c|
          potential_triplet = Triplet.new(a, b, c)
          if args[:sum]
            array_of_triplets << potential_triplet if (potential_triplet.pythagorean? && (potential_triplet.sum == args[:sum]))
          else
            array_of_triplets << potential_triplet if potential_triplet.pythagorean?
          end
        end
      end
    end
    array_of_triplets.uniq{|t| [t.a_side, t.b_side, t.c_side]}
  end

end

#
t =  Triplet.new(11,11,11)