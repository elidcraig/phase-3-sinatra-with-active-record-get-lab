class BakedGood < ActiveRecord::Base

  def self.by_price
    self.order price: :desc
  end

  def self.most_expensive
    self.by_price.limit 1
  end

  belongs_to :bakery
end
