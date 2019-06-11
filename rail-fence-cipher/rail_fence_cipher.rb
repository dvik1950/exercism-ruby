module BookKeeping
  VERSION = 1
end

class Array; def in_groups(num_groups)
  return [] if num_groups == 0
  slice_size = (self.size/Float(num_groups)).ceil
  groups = self.each_slice(slice_size).to_a
end; end


class RailFenceCipher

  def self.encode(message, rails_numb)
      message = message.split('').in_groups(rails_numb)
      deciphered = []
    message.length.times do |x|
      x.step(x.length,rails_numb-x) do |m|
        unless message[x][m].nil?
        deciphered << message[x][m]
        end
      end
    end
  end


end

puts RailFenceCipher.encode('One rail, only one rail', 1)

