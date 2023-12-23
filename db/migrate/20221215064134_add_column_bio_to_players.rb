class AddColumnBioToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :bio, :string
  end
end
