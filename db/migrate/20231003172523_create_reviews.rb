class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
