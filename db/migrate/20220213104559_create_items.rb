class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :explanation
      t.integer :tax_out_price
      t.string :image
      t.timestamps
    end
  end
end
