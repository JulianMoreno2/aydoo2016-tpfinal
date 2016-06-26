require 'rspec'
require 'spec_helper'
require_relative '../model/dominio/objeto_espacial'

describe 'Ejemplos' do
  it 'Una Nave (vida=100, masa=100) choca con un Asteriode (vida=50, masa=100)' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.modificar_vida(50)
    nave.chocar_con(asteroide)
    expect(nave.obtener_masa).to eq 50
  end
end