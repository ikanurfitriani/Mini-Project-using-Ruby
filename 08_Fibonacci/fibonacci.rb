puts "================================"
puts "----- MENGHITUNG FIBONACCI -----"
puts "================================"
print "\nMasukan panjang deret = "
n = gets.chomp.to_i
fib = Array.new(n)

fib[0] = 0
fib[1] = 1

for i in 2...n
  fib[i] = fib[i-1] + fib[i-2]
end

fib.each do |num|
  print "#{num} "
end

puts "\n"