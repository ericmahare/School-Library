require_relative('./app')

class Create
  def create_person
    entry = nil
    print 'Choose (1) to Create a Student or (2) for a Teacher: '
    until [1, 2].include?(entry)
      entry = gets.chomp.strip.to_i
      puts 'Choice is not correct : (1) for Student, (2) for Teacher' unless [1, 2].include?(entry)
    end
    case entry
    when 1
      create_student
    when 2
      create_teacher
    else
      p 'Choose between 1 and 2'
    end
  end

  def create_teacher
    age = -1
    print 'Age: '
    while age <= 0
      age = gets.chomp.to_i
      print 'Add correct age of teacher: ' if age <= 0
    end
    print 'Name: '
    name = gets.chomp.strip.capitalize
    print 'Specialization: '
    specialization = gets.chomp.strip.capitalize
    @people.push(Teacher.new(age, specialization, name))
    puts 'Teacher created successfuly!'
  end

  def create_student
    print 'Age: '
    age = -1
    while age <= 0
      age = gets.chomp.to_i
      print 'Add correcte age of student: ' if age <= 0
    end
    print 'Name: '
    name = gets.chomp.strip.capitalize
    print 'Has parent permission ? (N/Y): '
    permission = gets.chomp.strip.upcase
    case permission
    when 'Y', 'YES'
      permission = true
    when 'N', 'NO'
      permission = false
    end
    @people.push(Student.new(nil, age, name, parent_permission: permission))
    puts 'Student created successfuly!'
  end

  def create_book
    print 'Title: '
    title = gets.chomp.strip.capitalize
    print 'Author: '
    author = gets.chomp.strip.capitalize
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
  end

  def create_rental
    fetch_books
    print 'Select the key of the book: '
    book_select = gets.chomp.chomp.to_i
    fetch_people
    print 'Select the key of the person: '
    person_select = gets.chomp.chomp.to_i
    print 'Select the date: (Year/Month/Day): '
    date = gets.chomp.strip
    book = @books[book_select]
    person = @people[person_select]
    person.add_rental(date, book)
    puts 'Rental created successfuly!'
    puts
  end
end
