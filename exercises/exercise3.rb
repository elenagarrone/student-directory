def input_students
  puts "Please enter the name of the students. \nTo finish, just hit return twice."
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {:name => name, :cohort => :november}
    puts "Now we have #{students.length} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of my cohort at Makers Academy \n--------------"
end

def print_students(students)
  puts "The students starting with letter A are:"
  students.each do |student|
    name_with_A = student[:name].chr.capitalize.include?('A')
    if name_with_A == true
      puts "#{student[:name]} (#{student[:cohorts]} cohort)"
    end
  end
end

students = input_students
print_header
print_students(students)
