require("sinatra")
require("sinatra/reloader")
require("./lib/word_frequency_count")

get("/form") do
  erb(:form)
end

get("/results") do
  @text = params.fetch("text")
  @word = params.fetch("word")
  @word_frequency_count = @text.word_frequency_count(@word)
  erb(:results)
end
