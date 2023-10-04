class AddIdAndStatusToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :game_id, :string
    add_column :events, :status, :string
  end
end
