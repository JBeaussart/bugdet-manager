class ChangeTransactionAmountToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :amount, :float
  end
end
