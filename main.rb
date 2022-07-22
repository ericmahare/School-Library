require_relative('./person')
require_relative('./capitalize_decorator')
require_relative('./trimmer_decorator')
require_relative('./rental')
require_relative('./books')
require_relative('./app')


def main 
  def options
    puts '1 => List all book'
    puts '2 => List all People'
    puts '3 => Create a person'
    puts '4 => Create a book'
    puts '5 => Create a rental'
    puts '6 => List all rentals for a given person id'
    puts '7 => Exit'
  end

  def run
    puts
    p 'School Library App!'
    puts 
    option = nil
    while option != 7
      puts 'Please choose an option by entrering a number: '
      options
      print '[Input number]: '
      option = gets.chomp.strip.to_i
      make(option)
      puts
    end
    puts 'GOOD BYE'
  end

  def make(option)
    app = App.new
    if option === 1
      app.get_books
    elsif option === 2 
      app.get_people
    elsif option === 3
      app.create_person
    elsif option === 4
      app.create_book
    elsif option === 5
      app.create_rental
    elsif option === 6
      app.get_rental
    elsif option === 7
      nil 
    else
      p 'Wrong value specified'
    end
  end
  run
end

main
