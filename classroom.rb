class Classroom
  attr_accessor :label

  def initialize(label)
    @lebel = label
    @students = []
  end

  def add_stds(std)
    @students.push(std)
    student.classroom = self
  end
end
