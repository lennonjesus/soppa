class MarketItem < ActiveRecord::Base

  belongs_to :market
  belongs_to :ingredient

end
