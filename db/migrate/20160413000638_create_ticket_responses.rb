class CreateTicketResponses < ActiveRecord::Migration
  def change
    create_table :ticket_responses do |t|
      t.integer :ticket_id
      t.string :user_id
      t.boolean :moderator

      t.timestamps null: false
    end
  end
end
