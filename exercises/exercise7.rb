def input_students
  puts "Please enter the name of the students".center(40)
  puts "To finish, just hit return twice".center(40)
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Which cohort?".center(40)
    cohort = gets.chomp
    students << {:name => name, :cohort => cohort}
    puts "Now we have #{students.length} students".center(40)
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of my cohort at Makers Academy".center(40)
  puts "--------------".center(40)
end

def print(students)
  students.each do |student, cohort|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(40)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students".center(40)
end

students = input_students
print_header
print(students)
print_footer(students)
