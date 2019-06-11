class Transpose

  def self.transpose(input)
      matrix = []
      input.lines.each do |line|
        matrix << line.chars
      end
    matrix.transpose
  end

end