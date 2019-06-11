class School

   attr_accessor :student_hash

  def initialize
    @student_hash = Hash.new []
  end

  def add(name, grade)
    self.student_hash[grade] += [name]
  end


  def students(grade)
    @student_hash[grade].sort
  end

    def students_by_grade
      return_array = []
      (@student_hash.sort.to_h).each_pair do |key,value|
        return_array << {:grade=>key, :students=>value.sort}
      end
      return_array
    end

end

module BookKeeping
  VERSION = 3
end
