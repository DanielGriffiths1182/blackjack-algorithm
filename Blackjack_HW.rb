puts "Please enter your first card."
one = gets.chomp.to_i
if one == 0
  break
end

puts "Please enter your second card."
two = gets.chomp.to_i
if two == 0
  break
end

puts "Please enter the dealers card."
dealer_card = gets.chomp.to_i
if dealer_card == 0
  break
end

cards = {"player" => one + two,
         "dealer" => dealer_card
}

loop do

  if cards["player"] < 17 && cards["dealer"] > 6
    puts "You should hit, get another card."
  elsif cards["player"] < 17 && cards["dealer"] < 6
    puts "You should hit, get another card."
  else
    puts "you should stand where you are."
  end

  puts "Please enter your first card."
  one = gets.chomp.to_i
  if one == 0
    break
  end

  puts "Please enter your second card."
  two = gets.chomp.to_i
  if two == 0
    break
  end

  puts "Please enter the dealers card."
  dealer_card = gets.chomp.to_i
  if dealer_card == 0
    break
  end

  cards["player"] += one + two
  cards["dealer"] += dealer_card
end
