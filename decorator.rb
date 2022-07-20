require_relative('./nameable') 
class Decorator < Nameable
  def initialize(name)
    @nameable = name
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end