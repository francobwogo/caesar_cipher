def caesar_cipher(str, shift)
  # Iterate over each character in the string
  str.chars.map do |char|
    # Check if the character is a lowercase letter
    if char =~ /[a-z]/
      # Convert the character to its Unicode code point, shift it, wrap around with modulo 26, and convert back to a character
      ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    # Check if the character is an uppercase letter
    elsif char =~ /[A-Z]/
      # Convert the character to its Unicode code point, shift it, wrap around with modulo 26, and convert back to a character
      ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      # If the character is not a letter (space, punctuation, etc.), leave it unchanged
      char
    end
  end.join # Combine the transformed characters back into a single string
end