# puts 'hello '.+ 'world'
# puts (10.* 9).+ 9

# iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
# puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
# self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

# var1 = 'stop'
# var2 = 'stressed'
# var3 = 'Can you pronounce this sentence backwards?'
#
# puts var1.reverse
# puts var2.reverse
# puts var3.reverse
# puts var1
# puts var2
# puts var3

# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'

# Task
# puts 'Hello there, and what\'s your First name?'
# name = gets.chomp
# puts 'And what\'s your Middle name?'
# middle = gets.chomp
# puts 'And what\'s your Last name?'
# family = gets.chomp
# puts 'Did you know there are ' + ( name.length + middle.length + family.length ).to_s + ' characters in your name, ' + name + '?'

# letters = 'aAbBcCdDeE'
# puts letters.upcase
# puts letters.downcase
# puts letters.swapcase
# puts letters.capitalize
# puts ' a'.capitalize
# puts letters

# lineWidth = 50
# puts(                'Old Mother Hubbard'.center(lineWidth))
# puts(               'Sat in her cupboard'.center(lineWidth))
# puts(         'Eating her curds an whey,'.center(lineWidth))
# puts(          'When along came a spider'.center(lineWidth))
# puts(         'Which sat down beside her'.center(lineWidth))
# puts('And scared her poor shoe dog away.'.center(lineWidth))

# lineWidth = 40
# str = '--> text <--'
# puts str.ljust  lineWidth
# puts str.center lineWidth
# puts str.rjust  lineWidth
# puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

# Task Boss
# puts 'WHAT YOU WANT?!'
# str = gets.chomp
# str.upcase!
# puts 'WHADDAYA MEAN "' + str + '"?!?  YOU\'RE FIRED!!'

# Task Table of Contents
lineWidth = 60
puts 'Table of Contents'.center lineWidth

puts 'Chapter 1:  Numbers'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2)
puts 'Chapter 2:  Letters'.ljust(lineWidth/2) + 'page 72'.rjust(lineWidth/2)
puts 'Chapter 3:  Variables'.ljust(lineWidth/2) + 'page 118'.rjust(lineWidth/2)

