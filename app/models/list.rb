class List < ApplicationRecord
  #Uma lista para vários itens e se a lista for excluida os itens também.
  has_many :items, dependent: :destroy
  #Responsável para pegar os atributos filhos (items) e os  registros sejam removidos
  accepts_nested_attributes_for :items, allow_destroy: true
end
