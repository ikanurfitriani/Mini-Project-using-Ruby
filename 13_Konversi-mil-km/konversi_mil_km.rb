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

puts "============================="
puts "KONVERSI MIL --><-- KILOMETER"
puts "-----------------------------"
puts "[1] Konversi Mil ke Kilometer"
puts "[2] Konversi Kilometer ke Mil"
puts "============================="
print "\nMasukan pilihan Anda : "
pil = gets.chomp.to_i

if pil == 1
  print "Masukan satuan jarak (Mil) = "
  mil = gets.chomp.to_i
  hasil_km = mil / 0.621371
  puts "\nJadi #{mil} Mil = #{hasil_km} Kilometer"
elsif pil == 2
  print "Masukan satuan jarak (KM) = "
  km = gets.chomp.to_i
  hasil_mil = km * 0.621371
  puts "\nJadi #{km} Kilometer = #{hasil_mil} Mil"
else
  puts "Pilih input yang Benar [1 / 2]"
end