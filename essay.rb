
essay = File.open("test.txt", "r")
essayContents = essay.read
essayContents = essayContents.downcase
# puts essayContents
contents = essayContents.split(/\W+/)

# print contents


frequencies = Hash.new(0)
contents.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
# frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

# print frequencies

keywords = frequencies.select {|a, b| a.length >= 4}

print keywords
