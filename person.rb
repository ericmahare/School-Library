require_relative('./nameable')
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name='Unknown', parent_permission: true)
    @id = Random.rand(1...100)
    @age = age
    @name = name
    @parent_permission = parent_permission
    super()
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def correct_name
    @name
  end
end
