class User < ActiveRecord::Base
  has_many :games
  has_many :guesses, through: :games
  has_many :cards, through: :guesses

  validates :name, presence: true
  validates :email, presence: true
  validates :password_hash, presence: true

  validates :email, uniqueness: true

  def password=(input)
    self.password_hash = BCrypt::Password.create(input)
  end

  def password
    BCrypt::Password.new(self.password_hash)
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user
      return user if user.password == password
    end
  end

end
