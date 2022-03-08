class CreateBankTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_transactions do |t|
      t.datetime :date
      t.float :amount
      t.string :tag
      t.text :comment
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
