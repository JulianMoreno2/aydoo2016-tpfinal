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

  it 'Una Nave (vida=100, masa=100) choca con un Asteriode (vida=50, masa=100)' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.modificar_vida(50)
    nave.chocar_con(asteroide)
    expect(asteroide.obtener_masa).to eq 110
  end

  it 'Una Estrella (vida=50, masa=10) choca con un Misil (vida=10, masa=30)' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.modificar_vida(50)
    estrella.modificar_masa(10)
    misil.modificar_vida(10)
    misil.modificar_masa(30)
    estrella.chocar_con(misil)
    expect(estrella.obtener_vida).to eq 50
  end

  it 'Una Estrella (vida=50, masa=10) choca con un Misil (vida=10, masa=30)' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.modificar_vida(50)
    estrella.modificar_masa(10)
    misil.modificar_vida(10)
    misil.modificar_masa(30)
    estrella.chocar_con(misil)
    expect(misil.obtener_vida).to eq 10
  end

  it 'Una Bomba (vida=200, masa=90) choca con otra Bomba (vida=20, masa=45)' do
    bomba = Bomba.new
    bomba1 = Bomba.new
    bomba.modificar_vida(200)
    bomba.modificar_masa(90)
    bomba1.modificar_vida(20)
    bomba1.modificar_masa(45)
    bomba.chocar_con(bomba1)
    expect(bomba.obtener_vida).to eq 100
  end

  it 'Una Bomba (vida=200, masa=90) choca con otra Bomba (vida=20, masa=45)' do
    bomba = Bomba.new
    bomba1 = Bomba.new
    bomba.modificar_vida(200)
    bomba.modificar_masa(90)
    bomba1.modificar_vida(20)
    bomba1.modificar_masa(45)
    bomba.chocar_con(bomba1)
    expect(bomba1.obtener_vida).to eq 0
  end

  it 'Una Bomba (vida=200, masa=100) choca con un Asteriode (vida=30, masa=100)' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.modificar_vida(200)
    asteroide.modificar_vida(30)
    asteroide.modificar_masa(100)
    bomba.chocar_con(asteroide)
    expect(bomba.obtener_vida).to eq 0
  end
end