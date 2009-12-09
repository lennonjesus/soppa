#
# Classe que representa um item do bookmark de um usuario
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class BookmarkItem < ActiveRecord::Base

  belongs_to :bookmark
  belongs_to :recipe

end
