class String
  define_method(:word_frequency_count) do |search_word|

    word_array = split()
    search_word_downcase = search_word.downcase()
    freq_count = 0

    # Of note, via the regex used below, the search word will be
    # compared for equality against each word in word_array, irrespective
    # of ending punctuation on that specific word in the array. However,
    # if the search_word has 1+ ending punctuation characters, it will
    # need to match exactly with each word in word_array to increment
    # freq_count.
    word_array.each() do |word|
      if ((word.downcase() == search_word_downcase) ||
        (word.downcase().sub(/\p{P}+$/,"") == search_word_downcase))
        freq_count += 1
      end
    end

    freq_count
  end
end
