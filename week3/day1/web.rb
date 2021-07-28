require 'sinatra'
require_relative './db_connector'

get '/' do 
    items = get_all_items_with_categories
    # items = get_all_items
    erb :index, locals:{
        items: items
    }
end

get '/items/new' do
    categories = get_all_categories
    erb :create, locals:{
        categories: categories
    }
end

post '/items/create' do

    name = params['name']
    price = params['price']
    category_id = params['category_id']
    insert_item_with_category(name, price, category_id)
    redirect '/'
end

get '/item/:id' do
    if request.xhr?
        item = get_item_by_id(params[:id])
        content_type :json
        { :item => item }.to_json
    else
        return "Page not found."
    end
end

put '/item' do
    id = params['id']
    name = params['name']
    price = params['price']
    category_id = params['category_id']

    update_item_with_category(id, name, price, category_id)

    content_type :json
    { :status => true }.to_json
end

delete '/item' do
    id = params['id']
    delete_item_with_category(id)
    redirect '/items'
end

# post '/item' do
#     name = params['name']
#     price = params['price']
#     category_id = params['category_id']

#     if name.empty? || price.empty?
#         return "Insert name & price"
#     else
#         insert_item_with_category(name, price, category_id)
#         redirect '/items'
#     end
# end



