class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.references :team, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.integer :term
      t.integer :deal_value

      t.timestamps
    end
  end
end
