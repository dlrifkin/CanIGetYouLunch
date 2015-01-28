get '/' do
  erb :index
end

get '/login' do
  erb :'/auth/_login'
end

post '/login' do
  user = User.find_by(user_name: params[:user][:user_name])

  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  end
  redirect '/login'
end

get '/signup' do
  erb :'/auth/_signup'
end

post '/signup' do
  user = User.new(params[:user])

  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    #errors
    redirect '/signup'
  end

end

get '/logout' do
  session.clear
  redirect '/'
end
