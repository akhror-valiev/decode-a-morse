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
  morse_dict.key(char)
end

def decode_word(word)
  letters = word.split
  newarr = []
  letters.each { |letter| newarr.insert(newarr.length, decode_char(letter)) }
  newarr.join
end

def decode_message(msg)
  arr = msg.split('  ')
  newarr = []
  arr.each { |word| newarr.insert(newarr.length, decode_word(word)) }
  newarr.join(' ')
end

puts decode_message '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
