require 'sinatra'
require 'sinatra/reloader'
require 'mysql2'
require 'pry'

client = Mysql2::Client.new(:host => "localhost", :username => "root",  :database => "twitter_app")
enable :method_override

# results.each do |row|
#     p row
# end

get '/' do
  sql_users = "SELECT name FROM users"
  statement_users = client.prepare(sql_users)
  sql_posts = "SELECT * FROM posts LEFT JOIN users ON users.id = posts.user_id"
  statement_posts = client.prepare(sql_posts)
  @users = statement_users.execute()
  @posts = statement_posts.execute()

  erb :index
end


post '/' do
  statement = client.prepare("INSERT INTO posts (user_id, content) VALUES(?, ?)")
  statement.execute(1, params[:content])
  redirect '/'
end

delete '/:id' do
  binding.pry
  statement = client.prepare("DELETE FROM posts WHERE id = ?")
  statement.execute(params[:id])
  redirect '/'
end
