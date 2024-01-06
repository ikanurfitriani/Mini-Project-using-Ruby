# Copyright (c) 2023 Ika Nurfitriani

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

def celsius_to_kelvin(c)
    c + 273.15
  end
  
  def celsius_to_fahrenheit(c)
    c * 1.8 + 32
  end
  
  def celsius_to_reamur(c)
    c * 0.8
  end
  
  def kelvin_to_celsius(k)
    k - 273.15
  end
  
  def kelvin_to_fahrenheit(k)
    k * 1.8 - 459.67
  end
  
  def kelvin_to_reamur(k)
    (k - 273.15) * 0.8
  end
  
  def fahrenheit_to_celsius(f)
    (f - 32) / 1.8
  end
  
  def fahrenheit_to_kelvin(f)
    (f + 459.67) / 1.8
  end
  
  def fahrenheit_to_reamur(f)
    (f - 32) * 0.44
  end
  
  def reamur_to_celsius(r)
    r / 0.8
  end
  
  def reamur_to_kelvin(r)
    r / 0.8 + 273.15
  end
  
  def reamur_to_fahrenheit(r)
    r * 2.25 + 32
  end
  
  def menu_list
    puts "================================"
    puts "\t Konversi Suhu"
    puts "================================"
    puts "[1] Dari Celsius"
    puts "[2] Dari Kelvin"
    puts "[3] Dari Fahrenheit"
    puts "[4] Dari Reamur"
    puts "[5] Keluar"
    print "\nMasukan Pilihan Anda = "
    input = gets.chomp.to_i
  
    case input
    when 1
      from_celsius
    when 2
      from_kelvin
    when 3
      from_fahrenheit
    when 4
      from_reamur
    when 5
      puts "\nThank You For Using This Application.\n"
    else
      puts "\nInputan yang Anda masukkan salah. Silahkan coba lagi.\n"
      menu_list
    end
  end
  
  def from_celsius
    loop do
      print "\nMasukan suhu (C) = "
      suhu = gets.chomp.to_f
      result_ctk = celsius_to_kelvin(suhu)
      result_ctf = celsius_to_fahrenheit(suhu)
      result_ctr = celsius_to_reamur(suhu)
      puts ""
      puts "#{suhu} Celsius = #{result_ctk.round(5)} Kelvin"
      puts "#{suhu} Celsius = #{result_ctf.round(5)} Fahrenheit"
      puts "#{suhu} Celsius = #{result_ctr.round(5)} Reamur"
      print "\nIngin mencoba lagi? (y/t) = "
      coba = gets.chomp.downcase
      break unless coba == "y"
    end
    puts "\n"
    menu_list
  end
  
  def from_kelvin
    loop do
      print "\nMasukan suhu (K) = "
      suhu = gets.chomp.to_f
      result_ktc = kelvin_to_celsius(suhu)
      result_ktf = kelvin_to_fahrenheit(suhu)
      result_ktr = kelvin_to_reamur(suhu)
      puts ""
      puts "#{suhu} Kelvin = #{result_ktc.round(5)} Celsius"
      puts "#{suhu} Kelvin = #{result_ktf.round(5)} Fahrenheit"
      puts "#{suhu} Kelvin = #{result_ktr.round(5)} Reamur"
      print "\nIngin mencoba lagi? (y/t) = "
      coba = gets.chomp.downcase
      break unless coba == "y"
    end
    puts "\n"
    menu_list
  end
  
  def from_fahrenheit
    loop do
      print "\nMasukan suhu (F) = "
      suhu = gets.chomp.to_f
      result_ftc = fahrenheit_to_celsius(suhu)
      result_ftk = fahrenheit_to_kelvin(suhu)
      result_ftr = fahrenheit_to_reamur(suhu)
      puts ""
      puts "#{suhu} Fahrenheit = #{result_ftc.round(5)} Celsius"
      puts "#{suhu} Fahrenheit = #{result_ftk.round(5)} Kelvin"
      puts "#{suhu} Fahrenheit = #{result_ftr.round(5)} Reamur"
      print "\nIngin mencoba lagi? (y/t) = "
      coba = gets.chomp.downcase
      break unless coba == "y"
    end
    puts "\n"
    menu_list
  end
  
  def from_reamur
    loop do
      print "\nMasukan suhu (R) = "
      suhu = gets.chomp.to_f
      result_rtc = reamur_to_celsius(suhu)
      result_rtk = reamur_to_kelvin(suhu)
      result_rtf = reamur_to_fahrenheit(suhu)
      puts ""
      puts "#{suhu} Reamur = #{result_rtc.round(5)} Celsius"
      puts "#{suhu} Reamur = #{result_rtk.round(5)} Kelvin"
      puts "#{suhu} Reamur = #{result_rtf.round(5)} Fahrenheit"
      print "\nIngin mencoba lagi? (y/t) = "
      coba = gets.chomp.downcase
      break unless coba == "y"
    end
    puts "\n"
    menu_list
  end
  
  menu_list  