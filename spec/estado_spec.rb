require 'rspec'
require_relative '../model/estado_construido'
require_relative '../model/estado_destruido'

describe 'Estado' do
  
  it 'deberia retornar construido cuando hago mostrar_estado' do
    estado = EstadoConstruido.new
    expect(estado.mostrar_estado).to eq "construido"
  end
  
  it 'deberia retornar destruido cuando hago mostrar_estado' do
    estado = EstadoDestruido.new
    expect(estado.mostrar_estado).to eq "destruido"
  end
end