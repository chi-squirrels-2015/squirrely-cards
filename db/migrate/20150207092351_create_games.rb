class CreateGames < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.belongs_to :deck
      t.belongs_to :user

      t.timestamps
    end
  end
end
