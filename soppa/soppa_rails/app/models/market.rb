#
# Classe que representa um mercado
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class Market < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  has_many :market_items
  has_many :ingredients, :through => :market_items

  has_attached_file :photo,
                  :styles => {
                    :thumb=> "100x100#",
                    :small  => "150x150>",
                    :medium => "300x300>",
                    :large =>   "400x400>"
                  }
end
