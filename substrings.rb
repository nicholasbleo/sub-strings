test_string = 'That dude got the basketball into the basketball basket!'
test_dictionary = ['dude', 'basketball', 'basket', 'ball']

def substrings(string, dictionary)
    split_string = string.downcase.split(' ')
    dictionary_match_counts = dictionary.reduce(Hash.new(0)) do |accumulator, word|
        match_count = split_string.filter_map {|string| true if string.include?(word)}.compact.length
        accumulator[word] += match_count
        accumulator
    end
    dictionary_match_counts
end

p substrings(test_string, test_dictionary)