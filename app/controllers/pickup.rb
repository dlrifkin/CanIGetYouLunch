get '/pickup/:id' do |id|
  @pickups = Pickup.where(retriever_id: id)
  erb :'/pickup/all'
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

