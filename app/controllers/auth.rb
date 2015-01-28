get '/' do
  erb :index
end

get '/login' do
  erb ':auth/_login'
end

get '/signup' do
  erb ':auth/_signup'
end

get '/logout' do
  session.clear
  redirect '/'
end
