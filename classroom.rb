class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_stds(std)
    @students.push(std)
    student.classroom = self
  end
end
