puts "========================================="
puts "MENGURUTKAN BILANGAN TERKECIL KE TERBESAR"
puts "-----  DENGAN METODE INSERTION SORT -----"
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

for i in 1...jumlah
  j = i
  while j > 0 && array[j] < array[j-1]
    swap = array[j]
    array[j] = array[j-1]
    array[j-1] = swap
    j -= 1
  end
end

puts "\n\nHasil Pengurutan = "
array.each do |bilangan|
  print "#{bilangan} "
end
puts "\n"