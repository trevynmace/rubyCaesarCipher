Alphabet = (0..25).each_with_object({}) { |shift, collection|
  string = [*"A".."Z"].rotate(shift).to_s
  collection[shift] = string + string.downcase
}

def encrypt(shift, unencryptedText)
  unencryptedText.tr(Alphabet[0], Alphabet[shift])
end

def decrypt(shift, encryptedText)
  encryptedText.tr(Alphabet[shift], Alphabet[0])
end

puts "Please enter the text to be encrypted: "
originalText = gets.chomp

puts "Please enter the shift amount between 1 and 25: "
shift = gets.chomp.to_i

encryptedText = encrypt(shift, originalText)
decryptedText = decrypt(shift, encryptedText)

puts "Original text: " + originalText
puts "Encrypted text: " + encryptedText
puts "Decrypted text: " + decryptedText