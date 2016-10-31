class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :user_id
      t.integer :category_id
      t.string :subject
      t.string :message
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end
