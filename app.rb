require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:form)
end
