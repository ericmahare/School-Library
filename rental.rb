require_relative('./books')
class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, person, book)
    @date = date

    @book = book
    book.rentals.push(self) 

    @person = person
    person.rentals.pus(self)
  end
end
