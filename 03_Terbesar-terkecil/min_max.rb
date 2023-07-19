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