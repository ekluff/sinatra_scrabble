require('sinatra')
require('sinatra/reloader')
require('./lib/sinatra_scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @word = params.fetch('word')
  @score = @word.scrabble_score()
  erb(:score)
end
