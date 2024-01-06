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

angka = Array.new(100, 0)
urut = Array.new(100, 0)
modus = Array.new(100) { Array.new(100, 0) }
inputCount = 0
N = 0
i, a, b, c, d, j, temp = 0
jumlah = 0
mean = 0.0

puts "============================"
puts "MENENTUKAN MEAN MEDIAN MODUS"
puts "============================"
print "\nMasukan banyaknya data : "
N = gets.chomp.to_i
puts

jumlah = 0.0
for i in 1..N
  print "Masukan ke #{i} : "
  angka[i] = gets.chomp.to_i
  jumlah += angka[i]
  urut[i] = angka[i]
end

mean = jumlah / N

for a in 1..N
  b = a
  while b > 0 && urut[b] < urut[b-1]
    temp = urut[b]
    urut[b] = urut[b-1]
    urut[b-1] = temp
    b -= 1
  end
end

if N % 2 == 0
  median = (urut[N / 2] + urut[N / 2 + 1]) / 2.0
else
  median = urut[(N + 1) / 2]
end

lastEmpty = 1
posx = 0
for i in 1..N
  posx = 0
  for j in 1..N
    if angka[i] == modus[j][0]
      posx = j
    end
  end
  if posx != 0
    modus[posx][1] += 1
  else
    modus[lastEmpty][0] = angka[i]
    modus[lastEmpty][1] = 1
    lastEmpty += 1
  end
end

modusValue = 0
modusCount = 0
for i in 1..N
  if modus[i][1] > modusCount
    modusValue = modus[i][0]
    modusCount = modus[i][1]
  end
end

puts "\nData terurut:"
for i in 1..N
  print " #{urut[i]}"
end

puts "\n\nMean   = #{mean}"
puts "Median = #{median}"
puts "Modus  = #{modusValue}"
puts ""