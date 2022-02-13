class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postage
      t.string :invoice
      t.string :payment
      t.string :name
      t.string :address
      t.string :postal_code

      t.timestamps
    end
  end
end
