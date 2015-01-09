require("rspec")
require("word_frequency_count")

describe("String#word_frequency_count") do

  it("counts the number of unique occurrences of the word 'team' in the string 'Let's go team'") do
    expect("Let's go team".word_frequency_count("team")).to(eq(1))
  end

  it("counts the number of unique occurrences of the word 'Team' in the string 'Let's go team' (case-insensitive in search word)") do
    expect("Let's go team".word_frequency_count("Team")).to(eq(1))
  end

  it("counts the number of unique occurrences of the word 'team' in the string 'Let's go Team' (case-insensitive in original string)") do
    expect("Let's go Team".word_frequency_count("team")).to(eq(1))
  end

  it("counts the number of unique occurrences of the word 'teAm' in the string 'Let's go Team' (case-insensitive in both search word and original string)") do
    expect("Let's go Team".word_frequency_count("teAm")).to(eq(1))
  end

  it("counts the number of unique occurrences of the word 'hammer' in the string 'Let's go Team' (case-insensitive in both search word and original string)") do
    expect("Let's go Team".word_frequency_count("hammer")).to(eq(0))
  end

  it("counts the number of unique occurrences of the word 'team' in the string 'Let's go team!' (case-insensitive in both search word and original string)") do
    expect("Let's go team!".word_frequency_count("team")).to(eq(1))
  end

  it("counts the number of unique occurrences of the word 'dog' in the string 'Hey Dog! Bark like a dog-like dog.' (case-insensitive in both search word and original string)") do
    expect("Hey Dog! Bark like a dog-like dog.".word_frequency_count("dog")).to(eq(2))
  end

  it("counts the number of unique occurrences of the word 'doG!' in the string 'Hey Dog! Bark like a dog-like dog!' (case-insensitive in both search word and original string)") do
    expect("Hey Dog! Bark like a dog-like dog!".word_frequency_count("doG!")).to(eq(2))
  end

end
