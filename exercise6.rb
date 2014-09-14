def input_students
puts "Please enter the name of the students"
puts "To finish, just hit return twice"
#create an empty arrays
students = []
#get the first name
name = gets.chomp
#while the name is not empty, repeat this code
  while !name.empty? do
  puts "Can i ask your date of birth?"
  birth = gets.chomp
    #add the student hash to the array
    students << {:name => name, :cohort => :november, :birth => birth}
  puts "Now we have #{students.length} students"
  name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
puts "The students of my cohort at Makers Academy"
puts "--------------"
end

def print(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort. Date of birth: #{student[:birth]})"
  end
end

def print_footer(names)
puts "Overall, we have #{names.length} great students"
end
#nothing happens until we call the methods

students = input_students
print_header
print(students)
print_footer(students)