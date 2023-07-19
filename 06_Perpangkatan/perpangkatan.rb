puts "======================="
puts "MENGHITUNG PERPANGKATAN"
puts "======================="
print "\nMasukan Bilangan = "
bil = gets.chomp.to_i

print "Masukan Pangkat = "
pangkat = gets.chomp.to_i

hasil = 1
for i in 1..pangkat
  hasil = hasil * bil
end

puts "\nHasil dari #{bil} pangkat #{pangkat} = #{hasil}"
puts "\n"