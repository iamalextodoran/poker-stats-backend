class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :fee, default: 50

      t.timestamps
    end
  end
end
