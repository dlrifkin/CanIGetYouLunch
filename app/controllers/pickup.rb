get '/pickup/:id' do |id|
  @pickups = Pickup.active.where(retriever_id: id)
  if request.xhr?
    erb :'/pickup/all', layout: false
  else
    erb :'/pickup/all'
  end
end

put '/pickup/:id' do |id|
  pickup = Pickup.find(id)
  pickup.update(fulfilled: true)
  redirect '/'
end

post '/pickup' do
  pickup = Pickup.new(retriever_id: current_user.id, order_id: params[:order])

  if pickup.save
    redirect '/'
  else
    # errors
    redirect '/order/search'
  end
end

