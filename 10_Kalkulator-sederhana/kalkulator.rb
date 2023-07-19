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