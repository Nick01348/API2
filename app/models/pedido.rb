class Pedido < ApplicationRecord
  belongs_to :usuario
  belongs_to :producto
  belongs_to :estado
end
