class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :name,              null: false, default: ""
      t.string :postal_code,       null: false, default: ""
      t.string :address,           null: false, default: ""
      t.integer :payment_method,   null: false, default: 0
      t.integer :status,           null: false, default: 0
      t.integer :shipping_cost,    null: false, default: 800
      t.integer :total_payment,    null: false, default: ""


      t.timestamps
    end
  end
end
