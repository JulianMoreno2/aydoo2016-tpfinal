require 'rspec'
require 'spec_helper'
require_relative '../model/estado_construido'
require_relative '../model/estado_destruido'

describe 'Estado' do
  
  it 'deberia retornar construido cuando hago mostrar' do
    estado = EstadoConstruido.new
    expect(estado.mostrar).to eq "construido"
  end
  
  it 'deberia retornar destruido cuando hago mostrar' do
    estado = EstadoDestruido.new
    expect(estado.mostrar).to eq "destruido"
  end
end