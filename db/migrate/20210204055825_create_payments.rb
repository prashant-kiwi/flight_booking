class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :booking, index: true
      t.string :transaction_id
      t.decimal :amount
      t.integer :status

      t.timestamps null: false
    end
    add_index :payments, :transaction_id
  end
end
