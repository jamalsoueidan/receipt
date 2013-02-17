class Revenue < ActiveRecord::Base
  attr_accessible :title, :cash

  def self.calculate_all
    cash = 0
    all.each { |r| cash += r.cash }
    return cash
  end
end
