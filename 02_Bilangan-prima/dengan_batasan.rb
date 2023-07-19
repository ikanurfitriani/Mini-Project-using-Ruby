puts "================================"
puts "MENAMPILKAN DERET BILANGAN PRIMA"
puts "================================"
print "Masukan bilangan awal : "
awal = gets.chomp.to_i
print "Masukan bilangan akhir : "
akhir = gets.chomp.to_i
puts "--------------------------------"

for i in awal..akhir
    bil = 0
    for j in 1..i
        if i % j == 0
            bil += 1
        end
    end
    if bil == 2
        print i.to_s + " "
    end
end

puts ""