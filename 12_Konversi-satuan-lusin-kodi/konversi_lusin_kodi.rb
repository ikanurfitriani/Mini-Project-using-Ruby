puts "=============================="
puts "KONVERSI SATUAN LUSIN DAN KODI"
puts "=============================="
print "Masukan jumlah barang : "
jumlah = gets.chomp.to_i

lusin = jumlah / 12
kodi = jumlah / 20

puts "\nJadi #{jumlah} barang = #{lusin} lusin"
puts "Jadi #{jumlah} barang = #{kodi} kodi"
puts ""