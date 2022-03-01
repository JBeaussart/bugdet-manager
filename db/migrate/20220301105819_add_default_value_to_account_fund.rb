class AddDefaultValueToAccountFund < ActiveRecord::Migration[6.1]
  def change
    change_column :accounts, :fund, :integer, default: 0
  end
end
