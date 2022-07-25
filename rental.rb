class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book)
    @date = date

    @book = Book
    book.rentals << self

    @person = person
    person.rentals << self
  end
end
