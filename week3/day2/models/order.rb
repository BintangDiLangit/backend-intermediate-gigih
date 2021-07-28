require '../../db/db_connector'

class order
    attr_accessor :reference_no, :customer_name, :date 

    def initialize(reference_no, customer_name, date)
        @reference_no = reference_no
        @customer_name = customer_name
        @date = date
    end

    def get_all_items
        client = create_db_client
        rawData = client.query("select*from orders")
        orders = Array.new
        rawData.each do |order|
            item = Item.new(order["reference_no"], order["customer_name"], order["date"])
            orders.push(item)
        end
        orders
    end

    def save
        client = create_db_client
        client.query("INSERT INTO orders (reference_no, customer_name, date) values ('#{reference_no}', '#{customer_name}', ''#{date}'')")
    end

    def valid?
        return false if @reference_no.nil?
        return false if @customer_name.nil?
        return false if @date.nil?
    end

end