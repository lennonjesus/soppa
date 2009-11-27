class City < ActiveRecord::Base
  belongs_to :state
  has_many :profiles
  has_many :markets

  validates_presence_of :name
end
