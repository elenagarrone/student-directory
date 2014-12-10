def input_students
  print "Please enter the name of the students. \nTo finish, just hit return twice. \n"
  #create an empty arrays
  students = []
  #get the first name
  name = gets.chop
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {:name => name, :cohort => :november}
    print "Now we have #{students.length} students\n"
    name = gets.chop
  end
  #return the array of students
  students
end

def print_header
  print "The students of my cohort at Makers Academy \n--------------\n"
end

def print_students(students)
  students.each do |student|
    print "#{student[:name]} (#{student[:cohort]} cohort)\n"
  end
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"
end
#nothing happens until we call the methods

students = input_students
print_header
print_students(students)
print_footer(students)