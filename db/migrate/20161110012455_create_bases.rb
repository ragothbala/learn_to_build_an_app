class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :name
      t.integer :team_id

      t.timestamps

    end
  end
end
