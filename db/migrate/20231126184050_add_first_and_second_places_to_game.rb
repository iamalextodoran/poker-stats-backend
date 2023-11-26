class AddFirstAndSecondPlacesToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :first_place, foreign_key: { to_table: :players }, null: true
    add_reference :games, :second_place, foreign_key: { to_table: :players }, null: true
  end
end
