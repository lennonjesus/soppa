#
# Classe que representa um comentario
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class Comment < ActiveRecord::Base

  belongs_to :recipe # um comentario sempre possui a uma receita
  belongs_to :user # um comentario sempre tem um dono

  validates_presence_of :body

end
