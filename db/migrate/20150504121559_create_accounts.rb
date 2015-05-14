class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :expense
      t.string :title
      t.datetime :datetime

      t.timestamps null: false
    end
  end
end
