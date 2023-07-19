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