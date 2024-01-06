# Copyright (c) 2023 Ika Nurfitriani

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

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