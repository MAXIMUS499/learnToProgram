#############
=begin
[]
[5]
['Hello', 'Goodbye']

flavor = 'vanilla'             # This is not an array, of course...
[89.9, flavor, [true, false]]  # ...but this is.
=end

#############
=begin
names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]
=end

#############
=begin
languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'
=end

#############
=begin
3.times do
  puts 'Hip-Hip-Hooray!'
end
=end

#############
=begin
foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end
=end

#############
=begin
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
=end


# Tasks

#############
# Task: input words
=begin
wordsArray = []
word = gets.chomp

while word != ''
  wordsArray.push(word)
  word = gets.chomp
end

puts wordsArray.sort.join(', ')
=end

#############
# Task: input words without sort method
=begin
wordsArray = []
word = gets.chomp

while word != ''
  if wordsArray.length == 0
    wordsArray.push(word)
  else
    sortedWordsArray = []
    wordsArray.each do |item|
      if item < word
        sortedWordsArray.push(item)
      end
    end
    sortedWordsArray.push(word)
    wordsArray.each do |item|
      if item > word
        sortedWordsArray.push(item)
      end
    end
    wordsArray = sortedWordsArray
  end
  word = gets.chomp
end

puts wordsArray.join(', ')
=end

#############
# Task Table of Contents
=begin
lineWidth = 60
ch1 = [ 1, 'Numbers',     1]
ch2 = [ 2, 'Letters',    72]
ch3 = [ 3, 'Variables', 118]
tableOfContents = [ ch1, ch2, ch3 ]

puts 'Table of Contents'.center lineWidth

tableOfContents.each do |chapter|
  puts     ('Chapter ' + chapter[0].to_s + ': ' + chapter[1]).ljust(lineWidth/2) +
           ('page ' + chapter[2].to_s).rjust(lineWidth/2)
end
=end
