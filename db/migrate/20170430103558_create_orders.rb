class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :order_status
      t.decimal :total_price
    end
  end
end
