class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy 
  has_many :billboards, through: :songs

  def self.order_rank
    order(:rank)
  end
end
