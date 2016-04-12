class Course < ActiveRecord::Base
  validates :name, presence: { message: 'Nome não pode estar em branco' }
  validates :description, presence: { message: 'Descrição não pode estar em branco' }
  validates :status, presence: { message: 'Status não pode estar em branco' }
end
