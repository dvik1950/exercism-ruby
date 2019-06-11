class Matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.lines.map do |line|
        line.split.map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end

end
