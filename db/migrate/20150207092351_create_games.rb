class CreateGames < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.belongs_to :user_id
      t.belongs_to :deck_id

      t.timestamps
    end
  end
end
