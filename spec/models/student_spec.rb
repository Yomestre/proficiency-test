require 'rails_helper'

describe Student do
  it { is_expected.to have_many :classrooms }

  it do
    is_expected.to validate_presence_of(:name)
      .with_message('Nome não pode estar em branco')
  end

  it do
    is_expected.to validate_numericality_of(:register_number)
      .with_message('Numero de registro inválido')
  end

  it do
    is_expected.to validate_presence_of(:status)
      .with_message('Status não pode estar em branco')
  end
end
