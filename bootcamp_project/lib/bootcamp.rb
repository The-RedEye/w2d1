class Bootcamp

  def initialize (name , slogan , student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hsh, k| hsh[k]=[] }
  end
  
  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire (str)
    @teachers << str
  end

  def enroll(str)
    if @students.length == @student_capacity
      return false
    end

    @students << str
    true

  end

  def enrolled?(str)

    @students.include?(str)

  end

#---------------Part 2--------------

def student_to_teacher_ratio
  @students.length / @teachers.length
end

def add_grade (str, grd)
  if @students.include?(str)
    @grades[str] << grd
    return true
  end
  
  false
end

def num_grades (str)
  @grades[str].length
end

def average_grade (str)
  if @grades[str]==[]
    return nil
  elseif !students.include?(str)
    return nil
  end

  avg = 0

  (0...@grades[str].length).each do |i|
    avg+=@grades[str][i]
  end

  return avg / @grades[str].length
end

end # end of class
