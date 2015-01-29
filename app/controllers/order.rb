get '/order/new' do

  if request.xhr?
    erb :'/order/new', layout: false
  else
    erb :'/order/new'
  end
end

get '/order/search' do
  @orders = Order.unclaimed
  if request.xhr?
    erb :'/order/all', layout: false
  else
    erb :'/order/all'
  end
end

get '/order/all/:id' do |id|
  @orders = Order.where(requestor_id: id)
  if request.xhr?
    erb :'/order/all', layout: false
  else
    erb :'/order/all'
  end
end

post '/order/new' do
  restaurant = Restaurant.first_or_create(name: params[:restaurant][:name])
  item = Item.first_or_create(name: params[:item][:name], restaurant_id: restaurant.id)
  order = Order.new(requestor_id: current_user.id, item_id: item.id)

  if order.save
    redirect '/'
  else
    # errors
    redirect '/order/new'
  end
end

delete '/order/:id' do |id|
  Order.find(id).destroy
  redirect "/"
end
