puts "==============================="
puts "CALCULATE BODY MASS INDEX (BMI)"
puts "==============================="

puts "Enter your height in cm: "
height = gets.chomp.to_f

puts "Enter your weight in kg: "
weight = gets.chomp.to_f
konversi_height = height / 100

bmi = weight / (konversi_height * konversi_height)

puts "\nYour Body Mass Index is #{bmi}"

if bmi <= 18.4
  puts "You are underweight."
elsif bmi <= 24.9
  puts "You are healthy."
elsif bmi <= 29.9
  puts "You are overweight."
elsif bmi <= 34.9
  puts "You are severely overweight."
elsif bmi <= 39.9
  puts "You are obese."
else
  puts "You are severely obese."
end