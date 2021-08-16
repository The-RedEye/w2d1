class Bootcamp

  def initialize (name , slogan , student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new([])
  end
  
  def name
    @name
  end

end
