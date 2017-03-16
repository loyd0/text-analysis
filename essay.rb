
essay = File.open("accounting.txt", "r")
essayContents = essay.read
essayContents = essayContents.downcase


#Splits essayContents into words
contents = essayContents.split(/[^[[:word:]]]+/)



#Takes the array and sorts it into the most the frequent words.
frequencies = Hash.new(0)
contents.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
# frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
# ^ Outputs a total list

#finds the words that have 4 or more characters
keywords = frequencies.select {|a, b| a.length >= 4}


#selects first 5 keywords
keywords = keywords.select.first(5)

print keywords
puts ""
