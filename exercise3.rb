def input_students
  print "Please enter the name of the students. \nTo finish, just hit return twice. \n"
  #create an empty arrays
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {:name => name, :cohort => :november}
    print "Now we have #{students.length} students\n"
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  print "The students of my cohort at Makers Academy \n--------------\n"
end

def print_students(students)
  print "The students starting with letter A are:\n"
  students.each do |student|
    name_with_A = student[:name].split('')[0].capitalize.include?('A')
    if name_with_A == true
      print "#{student[:name]} (#{student[:cohorts]} cohort)\n"
    end
  end
end

students = input_students
print_header
print_students(students)
