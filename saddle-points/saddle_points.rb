class Matrix

  attr_accessor :matrix_string

  def initialize(matrix_string)
    @matrix_string = matrix_string
  end

  def rows
    matrix_string.split("\n").map do |line|
      line.split(' ').map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end

  def saddle_points
    all_points = []
    rows.size.times do |r|
        index = rows[r].find_index(rows[r].max)
        if rows[r].max == columns[index].min
        all_points << [r, index]
        end
    end
    all_points
  end

end
