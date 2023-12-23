class Player < ApplicationRecord
  validates :name, presence: true

  has_many :contracts
  has_many :teams, through: :contracts

end
