def caesar_cipher(string, key)
  new_string = string.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      baseline = char.ord < 91 ? "A".ord : "a".ord
      ((char.ord - baseline + key) % 26 + baseline).chr
    else
      char
    end
  end.join
  puts new_string
end

caesar_cipher("What a string!", 5)
  # => "Bmfy f xywnsl!"