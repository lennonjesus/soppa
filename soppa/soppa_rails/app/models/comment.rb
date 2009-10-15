class Comment < ActiveRecord::Base

  validates_presence_of :body

  belongs_to :recipe
  belongs_to :user

end
