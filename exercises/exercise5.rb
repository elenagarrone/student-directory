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
  counter = 1
  while counter <= students.length do
    puts "#{counter}. #{students[counter-1][:name]} (#{students[counter-1][:cohort]} cohort)"
    counter += 1
  end
end

students = input_students
print_header
print_students(students)
