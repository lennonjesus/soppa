#
# Classe que representa uma cidade
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class City < ActiveRecord::Base
  belongs_to :state
  has_many :profiles
  has_many :markets

  validates_presence_of :name
end
