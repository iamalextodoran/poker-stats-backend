class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name, default: ''
      t.string :last_name, default: ''

      t.timestamps
    end
  end
end
