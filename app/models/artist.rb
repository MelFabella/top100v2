class Artist < ApplicationRecord
  has_many :songs
  has_many :billboards, through: :songs

  def sel.order_rank
    order(:rank)
  end
end
