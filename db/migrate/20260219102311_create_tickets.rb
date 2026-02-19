class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 0

      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.references :assigned_agent, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
