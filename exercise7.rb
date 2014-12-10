def input_students
puts "Please enter the name of the students".center(40)
puts "To finish, just hit return twice".center(40)
#create an empty arrays
students = []
#get the first name
name = gets.chomp
#while the name is not empty, repeat this code
  while !name.empty? do
    puts "Which cohort?".center(40)
    cohort = gets.chomp
    #add the student hash to the array
  students << {:name => name, :cohort => cohort}
  puts "Now we have #{students.length} students\n".center(40)
  name = gets.chomp
  end
  #return the array of students
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
puts "Overall, we have #{names.length} great students\n".center(40)
end
#nothing happens until we call the methods

students = input_students
print_header
print(students)
print_footer(students)
