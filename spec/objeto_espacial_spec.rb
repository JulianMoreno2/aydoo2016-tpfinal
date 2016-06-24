require 'rspec'
require_relative '../model/objeto_espacial'

describe 'ObjetoEspacial' do
  it 'deberia retornar 100 cuando hago obtener_vida de un objeto espacial' do
    objEspacial = ObjetoEspacial.new(100, 100)
    expect(objEspacial.obtener_vida).to eq 100
  end

end