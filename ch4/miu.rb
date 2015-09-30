# var1 = 2
# var2 = '5'

# puts var1 + var2

# var1 = 2
# var2 = '5'

# puts var1.to_s + var2

# var1 = 2
# var2 = '5'

# puts var1.to_s + var2
# puts var1 + var2.to_i

# puts '15'.to_f
# puts '99.999'.to_f
# puts '99.999'.to_i
# puts ''
# puts '5 is my favorite number!'.to_i
# puts 'Who asked you about 5 or whatever?'.to_i
# puts 'Your momma did.'.to_f
# puts ''
# puts 'stringy'.to_s
# puts 3.to_i

# puts 20
# puts 20.to_s
# puts '20'

# puts gets

# puts 'Hello there, and what\'s your name?'
# name = gets
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'

# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'

# Task 1
puts 'Hello there, and what\'s your First name?'
name = gets.chomp
puts 'And what\'s your Middle name?'
middle = gets.chomp
puts 'And what\'s your Last name?'
family = gets.chomp
puts 'Your name is ' + name + ' ' + middle + ' ' + family + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + ' ' + middle + ' ' + family + '.  :)'

# Task 2
puts 'Hello again, and what\'s your favourite number?'
number = gets.chomp
number = number.to_i + 1
puts number.to_s + ' - is better and bigger than your favourite number!'
