def caesar_cipher(string, num)
  upper = []
  lower = []

  for i in 65..90 do
    upper.push(i.chr)
  end

  for i in 97..122 do
    lower.push(i.chr)
  end

  newArr = []
  string.chars.each do |char|
    if upper.include?(char)
      newChar = (upper.index(char) + num) % 26
      newArr.push(upper[newChar])
    elsif lower.include?(char)
      newChar = (lower.index(char) + num) % 26
      newArr.push(lower[newChar])
    else
      newArr.push(char)
    end
  end

  newArr.join
end
