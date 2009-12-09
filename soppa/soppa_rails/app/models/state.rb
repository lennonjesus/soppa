#
# Classe que representa um estado
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class State < ActiveRecord::Base
  belongs_to :country
  has_many :cities

  validates_presence_of :name
end
