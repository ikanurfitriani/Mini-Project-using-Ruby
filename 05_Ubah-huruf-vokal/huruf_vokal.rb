puts "==============================="
puts "MENGUBAH HURUF VOKAL & KONSONAN"
puts "==============================="
print "\nMasukan Teks : "
teks = gets.chomp

print "Huruf yang akan diganti : "
ganti = gets.chomp

print "Diganti dengan : "
hasil = gets.chomp

puts "\nHasil Teks : #{teks.gsub(ganti, hasil)}"
puts "\n"