class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :product, index: true, foreign_key: true
      t.integer :parent_id
    end
  end
end
