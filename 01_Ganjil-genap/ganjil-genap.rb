puts "========================================="
puts "MENAMPILKAN DERET BILANGAN GANJIL & GENAP"
puts "========================================="
print "Masukan Bilangan Awal : "
awal = gets.chomp.to_i
print "Masukan Bilangan Akhir : "
akhir = gets.chomp.to_i
puts "\nPilihan:\n[1. Ganjil]\n[2. Genap]"
print "Masukan Pilihan Anda : "
pilihan = gets.chomp.to_i
puts "-----------------------------------------"

case pilihan
when 1
    puts "Deret Bilangan Ganjil"
    for i in awal..akhir
        if i % 2 != 0
            print i.to_s + " "
        end
    end
when 2
    puts "Deret Bilangan Genap"
    for i in awal..akhir
        if i % 2 == 0
            print i.to_s + " "
        end
    end
end

puts ""