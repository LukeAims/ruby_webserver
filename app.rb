require 'sinatra'

# Sample data for blog posts
posts = [
  { title: 'First Post', content: 'This is the content of the first post' },
  { title: 'Second Post', content: 'This is the content of the second post' }
]

get '/' do
  erb :index, locals: { posts: posts }
end

get '/new' do
  erb :new
end

post '/create' do
  # Code to handle creating a new post
  redirect '/'
end

get '/post/:id' do
  id = params['id'].to_i
  post = posts[id]
  erb :post, locals: { id: id, post: post }
end
