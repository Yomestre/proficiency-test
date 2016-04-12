require 'rails_helper'

describe Course do
  it do
    is_expected.to validate_presence_of(:name)
      .with_message('Nome não pode estar em branco')
  end

  it do
    is_expected.to validate_presence_of(:description)
      .with_message('Descrição não pode estar em branco')
  end

  it do
    is_expected.to validate_presence_of(:status)
      .with_message('Status não pode estar em branco')
  end
end
