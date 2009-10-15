class City < ActiveRecord::Base
  belongs_to :state
  has_many :profiles

  validates_presence_of :name
end
