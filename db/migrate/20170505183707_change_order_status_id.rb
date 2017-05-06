class ChangeOrderStatusId < ActiveRecord::Migration
  def change
    rename_column :orders, :order_status_id, :order_status
    change_column :orders, :order_status, :integer, default: 1
  end
end
