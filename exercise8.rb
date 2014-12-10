def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  #create an empty arrays
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "In which cohort are you in?"
    cohort = gets.chomp.capitalize
    cohort == "" ? cohort=:September : ""
    cohort = check_spelling(cohort)

    puts "Can i ask your date of birth?"
    birth = gets.chomp
    #add the student hash to the array
    students << {:name => name, :cohort => cohort, :birth => birth}
    if students.length == 1
      print "Now we have #{students.length} student\n"
    else
      print "Now we have #{students.length} students\n"
    end
    name = gets.chomp
  end
  #return the array of students
  students
end

def check_spelling(cohort)
  if cohort == 'January' || cohort == 'February' || cohort == 'March' || cohort == 'April' || cohort == 'May' || cohort == 'June'|| cohort == 'July' || cohort == 'August' || cohort == 'September' || cohort == 'October' || cohort == 'November' || cohort == 'December'
     return cohort
  else
    puts 'Please enter again the name of the cohort, it was incorrect.'
    re_entering_cohort = gets.chomp.capitalize
    return check_spelling(re_entering_cohort)
  end

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
  puts "Overall, we have #{names.length} great students\n"
end
#nothing happens until we call the methods

students = input_students
print_header
print(students)
print_footer(students)