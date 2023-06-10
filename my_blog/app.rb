require 'sinatra'

# Sample data for blog posts
posts = [
  { title: 'Quote of the day!', content: '"Three rings for the Elven kings under the sky, seven for the Dwarf lords in their halls of stone, <br>
    nine for the mortal men doomed to die, one for the Dark Lord on his dark throne, in the land of Mordor <br>
    where the shadows lie. One ring to rule them all, one ring to find them, one ring the bring them all, <br>
    and in the darkness bind them. In the land of Mordor where the shadows lie." -LOTR' },
  { title: 'Second Post', content: 'This is the content of the second post' }
]

get '/' do
  erb :index, locals: { posts:  }
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
