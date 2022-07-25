require_relative('./student')
require_relative('./teacher')
require_relative('./books')
require_relative('./rental')
require_relative('./create')

class App < Create
  def initialize
    super()
    @books = []
    @people = []
    @rentals = []
  end

  def fetch_books
    key = 0
    puts
    puts 'Books'
    puts 'No book available! Choose (4) to  create one' if @books.empty?
    @books.each do |book|
      puts "#{key}- Title: #{book.title} Author: #{book.author}"
      key += 1
    end
  end

  def fetch_people
    key = 0
    puts
    puts 'People'
    puts 'No people available! Choose (3) to create a person ' if @people.empty?
    @people.each do |person|
      print "#{key}- [#{person.class.name}] ID: #{person.id} Name: #{person.name} Age: #{person.age} "
      print "Parent Permission: #{person.parent_permission}" if person.is_a?(Student)
      print "Specialisation: #{person.specialization}" if person.is_a?(Teacher)
      puts
      key += 1
    end
  end

  def fetch_rentals
    puts
    fetch_people
    puts 'Choose Person ID?: '
    entry = gets.chomp.to_i
    puts 'Rentals'
    @people.each do |person|
      next unless person.id == entry

      person.rentals.each do |rental|
        puts "Date: #{rental.date} Book title: #{rental.book.title} by #{rental.book.author}"
        puts
      end
    end
  end
end
