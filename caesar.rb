# frozen_string_literal: true

puts 'Enter a string to shift!'
input = gets.chomp
puts 'Enter a number to determine how much to shift the string!'
number = gets.to_i

def caesar(str = 'Caesar', shift = 0)
  puts str.chars.map { |ch| mod(ch.ord, shift).chr }.join
end

def mod(number, shift)
  if (65..90).include?(number)
    ((number - 65 + shift) % 26) + 65
  elsif (97..122).include?(number)
    ((number - 97 + shift) % 26) + 97
  else
    number
  end
end

caesar(input, number)
