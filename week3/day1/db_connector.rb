require 'mysql2'
require_relative './item'
require_relative './category'

def create_db_client
    client = Mysql2::Client.new(
        :host => 'localhost',
        :username => 'bintang',
        :password => 'bintang',
        :database => 'food_oms_db'
    )
    client
end

def get_all_items
    client = create_db_client
    rawData = client.query("select*from items")
    items = Array.new
    rawData.each do |data|
        item = Item.new(data["id"], data["name"], data["price"])
        items.push(item)
    end
    items
end

def get_all_categories
    client = create_db_client
    rawData = client.query("select*from categories")
    categories = Array.new
    rawData.each do |data|
        category = Category.new(data["id"], data["name"])
        categories.push(category)
    end
    categories  
end

def get_all_items_with_categories
    client = create_db_client
    rawData = client.query("SELECT items.id, items.name as item_name, items.price as item_price, categories.id AS category_id, categories.name AS category_name
        FROM items
        JOIN item_categories ON items.id = item_categories.item_id
        JOIN categories on item_categories.category_id = categories.id")
    items = Array.new
    rawData.each do |data|
        category = Category.new(data["category_id"], data["category_name"])
        item = Item.new(data["id"], data["item_name"], data["item_price"], data['category_name'])
        items.push(item)
    end
    items
end


# def insert_item(name, price)
#     client = create_db_client
#     client.query("INSERT INTO items (name, price) values ('#{name}', '#{price}')")
# end

def insert_item_with_category(name, price, category_id)
    client = create_db_client
    client.query("INSERT INTO items (name, price) values ('#{name}', '#{price}')")

    item_id = client.last_id
    client.query("INSERT INTO item_categories (item_id, category_id) values ('#{item_id}', '#{category_id}')")
end


puts(get_all_items_with_categories)