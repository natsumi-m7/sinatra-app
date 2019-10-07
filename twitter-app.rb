require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @hello = 'こんにちは'
  erb :index
end

get '/:id' do
  @id = params[:id]
end

# post '/' do
#   @name=h(params[:name])
#   erb :index
# end
