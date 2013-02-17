class Expense < ActiveRecord::Base
  attr_accessible :title, :description, :price
  belongs_to :purchase

  def self.calculate_all
    cash = 0
    all.each { |r| cash += r.price }
    return cash
  end

end
