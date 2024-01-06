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
puts "MENENTUKAN BILANGAN TERBESAR DAN TERKECIL"
puts "========================================="
puts "Masukan Jumlah Bilangan : "
panjangArray = gets.chomp.to_i
angka = Array.new(panjangArray)
min = 0
max = 0

for i in 0...panjangArray
    print "Bilangan ke-#{i+1} : "
    angka[i] = gets.chomp.to_i

    if i == 0
        min = angka[i]
        max = angka[i]
    else
        if angka[i] < min
            min = angka[i]
        end
        if angka[i] > max
            max = angka[i]
        end
    end
end

puts "-----------------------------------------"
puts "Bilangan Terkecil : #{min}"
puts "Bilangan Terbesar : #{max}"