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

puts "========================================="
puts "MENGURUTKAN BILANGAN TERKECIL KE TERBESAR"
puts "-----  DENGAN METODE SELECTION SORT -----"
puts "========================================="
puts "\nMasukan Jumlah Bilangan = "
jumlah = gets.chomp.to_i

array = Array.new(jumlah)

for i in 0...jumlah
  print "Bilangan Ke-#{i+1} = "
  array[i] = gets.chomp.to_i
end

puts "\nList Bilangan yang Anda Masukan = "
array.each do |bilangan|
  print "#{bilangan} "
end

for i in 0...jumlah
  p = i
  for j in (i+1)...jumlah
    if array[p] > array[j]
      p = j
    end
  end
  if p != i
    swap = array[i]
    array[i] = array[p]
    array[p] = swap
  end
end

puts "\n\nHasil Pengurutan = "
array.each do |bilangan|
  print "#{bilangan} "
end
puts "\n"