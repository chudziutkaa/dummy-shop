class DropOrderStatusesTable < ActiveRecord::Migration
  def change
    drop_table :order_statuses
  end
end
