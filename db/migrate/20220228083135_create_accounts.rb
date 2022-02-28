class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :bank, null: false
      t.string :name, null: false
      t.integer :fund
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
