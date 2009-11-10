class BookmarkItem < ActiveRecord::Base

  belongs_to :bookmark
  belongs_to :recipe

end
