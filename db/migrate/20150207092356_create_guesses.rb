class CreateGuesses < ActiveRecord::Migration
  def change
    change_table :guesses do |t|
      t.belongs_to :game_id
      t.belongs_to :card_id
      t.boolean :correct?

      t.timestamps
    end
  end
end
