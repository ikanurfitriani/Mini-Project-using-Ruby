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