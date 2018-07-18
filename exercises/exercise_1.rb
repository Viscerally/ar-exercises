require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

ActiveRecord::Schema.define do
drop_table :stores if ActiveRecord::Base.connection.data_source_exists? :stores

  create_table(:stores) do |t|
    t.column :name, :string, limit:255
    t.integer :annual_revenue
    t.column :styles, :string, limit: 255
  end
end

class Store<ActiveRecord::Base
end

store = Store.create name: "Burnaby", annual_revenue: 300000, styles: "mens/women's"






# class test
# store = Stores.new
# store.name = "Burnaby"
# store.annual_revenue = 300000
# store.styles = "M/W"
# store.save
# end

# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)
