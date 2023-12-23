class AddColumnJoinedAtToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :joined_at, :datetime
  end
end
