class Comment < ActiveRecord::Base

  validates_presence_of :body

  belongs_to :recipe # um comentario sempre possui a uma receita
  belongs_to :user # um comentario sempre tem um dono

end
