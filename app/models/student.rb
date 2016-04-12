class Student < ActiveRecord::Base
  validates :name, presence: { message: 'Nome não pode estar em branco' }
  validates :register_number, numericality: { message: 'Numero de registro inválido' }
  validates :status, presence: { message: 'Status não pode estar em branco' }
end
