require_relative('./nameable')
require_relative('./rental')
class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age, :parent_permission, :specialization

  def initialize(age, name = 'Unknown', specialization, parent_permission: true)
    @id = Random.rand(1...100)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    @specialization = specialization
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

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
