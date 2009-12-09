#
# Classe que representa um item de mercado
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class MarketItem < ActiveRecord::Base

  belongs_to :market
  belongs_to :ingredient

end
