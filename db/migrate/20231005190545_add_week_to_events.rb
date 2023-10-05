class AddWeekToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :week, :integer

  end
end
