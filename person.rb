class Person 
  attr_reader :id, :name, :age
  attr_writer :name, :age
  @id 

  def initialize(age, name: 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def is_of_age? 
    age>=18
  end
  
  def can_use_services?
    @age>=18 || @parent_permission
  end
end