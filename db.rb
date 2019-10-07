require 'sinatra'
require 'sinatra/reloader'
require 'mysql2'
require 'pry'

client = Mysql2::Client.new(:host => "localhost", :username => "root",  :database => "twitter_app")


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
  @hello = 'こんにちは'

  erb :index
end


post '/' do
  binding.pry
  sql = "INSERT INTO posts (content) VALUES (#{params[:content]})"
  statement = client.prepare(sql)
end