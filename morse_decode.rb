MORSE_HARSH = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '-....-' => '-',
  '-.--.' => '(',
  '-.--.-' => ')',
  '.----.' => "'",
  '-...-' => '=',
  '.-.-.' => '+',
  '-..-.' => '/',
  '.--.-.' => '@',
  '---...' => ':',
  '-.-.-.' => ';',
  '-.-.--' => '!',
  '...-..-' => '$',
  '.-..-.' => '"',
  '.--.-' => '@',
  '...---...' => 'SOS',
  '...--.--' => 'END'
}.freeze

def decode_char(char)
  MORSE_HARSH[char]
end

def decode_word(string)
  string.split.map { |char| decode_char(char) }.join
end

def decode(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('- .... .. ...   .. ...   --- ..- .-.   ..-. .. .-. ... -   .-. ..- -... -.--   .--. .-. --- --. .-. .- -- -.-.--')
