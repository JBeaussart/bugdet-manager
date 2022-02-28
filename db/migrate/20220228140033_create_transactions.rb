class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.integer :amount
      t.string :tag
      t.text :comment
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
