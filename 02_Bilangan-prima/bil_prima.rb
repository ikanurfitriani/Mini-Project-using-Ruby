puts "========================="
puts "MENENTUKAN BILANGAN PRIMA"
puts "========================="
print "Masukan bilangan : "
bil = gets.chomp.to_i

puts "-------------------------"

cek = 0
for i in 2..bil
    if bil % i == 0
        cek += 1
    end
end

if cek == 1
    puts "#{bil} merupakan bilangan Prima"
else
    puts "#{bil} bukan bilangan Prima"
end