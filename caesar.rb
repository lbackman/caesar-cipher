puts "Enter a string to shift!"
input = gets.chomp
puts "Enter a number to determine how much to shift the string!"
number = gets.to_i

def caesar(str = "Caeasar", shift = 0)
  # Split str in to array
  # For each element in array:
  # If element.ord is in (65..90) or (97..122):
  # Map the element to that number
  # Then shift those numbers by the amount given by 2nd input
  # Convert back to letters
  # Join the array back in to a string
  # Return the shifted string
end

def mod(number, shift)
  if (65..90).include?(number)
    ((((number - 65) + shift) % 26) + 26) % 26 + 65
  elsif (97..122).include?(number)
    ((((number - 97) + shift) % 26) + 26) % 26 + 97
  else
    number
  end
end
