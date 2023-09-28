class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :home_team
      t.string :away_team
      t.string :city
      t.string :stadium
      t.datetime :scheduled_date

      t.timestamps
    end
  end
end
