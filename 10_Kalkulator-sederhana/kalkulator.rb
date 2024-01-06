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

puts "===================="
puts "KALKULATOR SEDERHANA"
puts "--------------------"
puts "1. Perkalian"
puts "2. Pembagian"
puts "3. Penjumlahan"
puts "4. Pengurangan"
puts "===================="
print "\nPilihan Operasi : "
pil = gets.chomp.to_i
print "Masukan bilangan pertama : "
bil1 = gets.chomp.to_i
print "Masukan bilangan kedua   : "
bil2 = gets.chomp.to_i

hasil = 0

case pil
when 1
  hasil = bil1 * bil2
when 2
  hasil = bil1 / bil2
when 3
  hasil = bil1 + bil2
when 4
  hasil = bil1 - bil2
else
  puts "Salah memasukan pilihan"
end

puts "\nHasil : #{hasil}"
puts ""