dial_book = {
  "london" => "012",
  "manchester" => "0161",
  "sheffield" => "0121",
  "leeds" => "0011",
  "liverpool" => "0151",
  "preston" => "01772",
  "lancaster" => "0102",
  "newcastle" => "0111",
  "glasgow" => "0321",
  "devon" => "0123"
}

def get_city_names(somehash)
  somehash.each { |k, v| puts k }
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code
  based on a city name?(Y/N)"

  answer = gets.chomp
  if answer != "y"
    break
  end


  puts "Which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp

  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "Sorry! You entered a city name not in the dictionary"
  end
end
