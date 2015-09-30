=begin
How about weddingNumber? It should work almost the same as englishNumber, except that it should insert the word "and" all over the place, returning things like 'nineteen hundred and seventy and two', or however wedding invitations are supposed to look. I'd give you more examples, but I don't fully understand it myself. You might need to contact a wedding coordinator to help you.
=end

def englishNumber number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = '' # This is the string we will return.

  onesPlace = ['one', 'two', 'three', 'four', 'five',
               'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty',
               'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # trillions
  left = number
  write = left/1000000000000 # How many trillions left to write out?
  left = left - write*1000000000000 # Subtract off those trillions.

  if write > 0

    trillions = englishNumber write
    numString = numString + trillions + ' trillion'


    if left > 0
      numString = numString + ' and '
    end
  end

  # billions
  write = left/1000000000 # How many billions left to write out?
  left = left - write*1000000000 # Subtract off those billions.

  if write > 0

    billions = englishNumber write
    numString = numString + billions + ' billion'


    if left > 0
      numString = numString + ' and '
    end
  end

  # millions
  write = left/1000000 # How many millions left to write out?
  left = left - write*1000000 # Subtract off those millions.

  if write > 0

    millions = englishNumber write
    numString = numString + millions + ' million'


    if left > 0
      numString = numString + ' and '
    end
  end

  # thousands
  write = left/1000 # How many thousands left to write out?
  left = left - write*1000 # Subtract off those thousands.

  if write > 0

    thousands = englishNumber write
    numString = numString + thousands + ' thousand'


    if left > 0
      numString = numString + ' and '
    end
  end

  # hundreds
  write = left/100 # How many hundreds left to write out?
  left = left - write*100 # Subtract off those hundreds.

  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/10 # How many tens left to write out?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
puts englishNumber(1111111111111)