#
# Classe que representa os itens favoritos de um usuario
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class Bookmark < ActiveRecord::Base

  belongs_to :user
  has_many :bookmark_items

end
