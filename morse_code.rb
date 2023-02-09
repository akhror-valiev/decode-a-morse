def decode_char(char)
  morse_dict = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  return morse_dict.key(char)
end

def decode_word(word)
  letters = word.split
  newArr = []
  letters.each { |letter| newArr.insert(newArr.length, decode_char(letter)) }
  return newArr.join
end

def decode_message(msg)
  arr = msg.split('  ')
  newArr = []
  arr.each { |word| newArr.insert(newArr.length, decode_word(word)) }
  return newArr.join(' ')
end

puts decode_message '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
