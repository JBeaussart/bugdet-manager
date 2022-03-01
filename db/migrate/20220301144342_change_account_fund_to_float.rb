class ChangeAccountFundToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :accounts, :fund, :float, default: 0
  end
end
