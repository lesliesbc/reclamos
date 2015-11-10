class ReclamoTienda < ActiveRecord::Base
  belongs_to :recla
  belongs_to :tienda
end
