class CreateGuesses < ActiveRecord::Migration
  def change
    change_table :guesses do |t|
      t.belongs_to :game
      t.belongs_to :card
      t.boolean :correct

      t.timestamps
    end
  end
end
