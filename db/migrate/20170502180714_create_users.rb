class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :street
      t.integer :building_nr
      t.string :post_code
      t.string :city
    end
  end
end
