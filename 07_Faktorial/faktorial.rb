puts "===================="
puts "MENGHITUNG FAKTORIAL"
puts "===================="
print "\nMasukan Bilangan = "
n = gets.chomp.to_i

if n > 0
  hasil = 1
  for i in 1..n
    hasil = hasil * i
  end
else
  hasil = 1
end

puts "\nHasil dari #{n}! = #{hasil}"
puts "\n"