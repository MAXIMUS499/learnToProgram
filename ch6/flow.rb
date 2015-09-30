# Comparison Methods

=begin
puts 1 > 2
puts 1 < 2
=end

=begin
puts 5 >= 5
puts 5 <= 4
=end

=begin
puts 1 == 1
puts 2 != 1
=end

# puts 'cat' < 'dog'


# Branching

############
=begin
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Pavel'
  puts 'What a lovely name!'
end
=end

############
=begin
puts 'I am a fortune-teller.  Tell me your name:'
name = gets.chomp
if name == 'Pavel'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my!  Look at the time!'
  puts 'I really have to go, sorry!'
end
=end

############
=begin
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end
=end


# Looping

############
=begin
command = ''

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'
=end

############
# Task: Get rid of blank line
=begin
command = ''

while command != 'bye'
  if command != ''
    puts command
  end
  command = gets.chomp
end

puts 'Come again soon!'
=end


# A Little Bit of Logic

############
=begin
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
else
  if name == 'Katy'
    puts 'What a lovely name!'
  end
end
=end

############
=begin
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end
=end

############
=begin
iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )
=end


# Tasks

############
# Task: 99 bottles of beer on the wall...
=begin
number = 99

while number
  if number == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'
    number = 99
  else
    puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer.'
    number -= 1
    puts 'Take one down and pass it around, ' + number.to_s + ' bottles of beer on the wall.'
  end
  gets.chomp
end
=end

############
# Task: a Deaf Grandma program
=begin
shout = ''

while shout != 'BYE'
  if shout != shout.upcase or shout == ''
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    puts 'NO, NOT SINCE ' + (1950 - rand(21)).to_s + '!'
  end
  shout = gets.chomp
end
=end

############
# Task: Deaf Grandma with 3 BYEs
=begin
byeCount = 0

while byeCount != 3
  shout = gets.chomp
  if shout == 'BYE'
    byeCount += 1
  else
    byeCount = 0
  end
  if shout != shout.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    puts 'NO, NOT SINCE ' + (1950 - rand(21)).to_s + '!'
  end
end
=end

############
# Task: Leap Years
puts 'Enter first year: '
firstYear = gets.chomp.to_i

puts 'Enter second year: '
secondYear = gets.chomp.to_i

while secondYear > firstYear
  firstYear += 1
  if firstYear % 400 == 0 or (firstYear % 4 == 0 and firstYear % 100 != 0)
    print firstYear.to_s + ' '
  end
end
