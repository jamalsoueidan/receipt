class Purchase < ActiveRecord::Base
  default_scope order('created_at desc')
  has_many :expenses
  attr_accessible :title, :description, :price

  def self.not_sold_yet
    Purchase.where(:sold => false)
  end

  def self.sold
    Purchase.where(:sold => true)
  end

  def self.calculate_sold
    cash = 0
    where(:sold => true).each { |r| cash += r.price }
    return cash
  end

  def self.calculate_bought
    cash = 0
    where(:sold => false).each { |r| cash += r.price }
    return cash
  end
end
