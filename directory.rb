#let's put all students into an array
students = [
"Hadi",
"Karin",
"James",
"Sean",
"Fadie"]
#and then print them
puts "The students of my cohort at Makers Academy"
puts "--------------"
students.each do |student|
   puts student
end
#finally, we print the total
print "Overall, we have #{students.length} great students"
#it's important that print() doesn't add new line characters