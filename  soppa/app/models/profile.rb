class Profile < ActiveRecord::Base

  belongs_to :user
  belongs_to :city

  has_attached_file :photo,
                  :styles => {
                    :thumb=> "100x100#",
                    :small  => "150x150>",
                    :medium => "300x300>",
                    :large =>   "400x400>"
                  }

  validates_presence_of :name
end
