class Game < ActiveRecord::Base
  has_many :guesses
  belongs_to :user
  belongs_to :deck

  def cards
    deck.cards
  end
end
