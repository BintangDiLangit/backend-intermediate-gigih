require 'sinatra'

items = {}

get '/items' do
    erb :items
end

post '/wow' do

    name = params['name']
    price = params['price']
    items[name] = price

    redirect '/listItem'
end

get '/listItem' do
    erb :listItem
end


get '/login' do
    erb :login
end