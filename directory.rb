#let's put all students into an array
students = [
"Hadi",
"Karin",
"James",
"Sean",
"Fadie"]

def print_header
puts "The students of my cohort at Makers Academy"
puts "--------------"
end

def print(names)
   names.each do |name|
     puts name
   end
end

def print_footer(names)
puts "Overall, we have #{names.length} great students"
end
#nothing happens until we call the methods

print_header
print(students)
print_footer(students)