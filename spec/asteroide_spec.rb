require 'rspec'
require 'spec_helper'
require_relative '../model/dominio/asteroide'
require_relative '../model/dominio/objeto_espacial'

describe 'Asteroide' do

  it 'deberia retornar 100 cuando hago obtener_vida de un asteoroide nuevo' do
    asteroide = Asteroide.new
    expect(asteroide.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando hago obtener_masa de un asteroide nuevo' do
    asteroide = Asteroide.new
    expect(asteroide.obtener_masa).to eq 100
  end

  it 'deberia retornar asteroide cuando hago obtener_nombre' do
    asteroide = Asteroide.new
    expect(asteroide.obtener_nombre).to eq Asteroide
  end
  
  it 'deberia retornar 100 cuando asteroide chocar_con(asteroide)' do
    asteroide = Asteroide.new
    asteroide1 = Asteroide.new
    asteroide.chocar_con(asteroide1)
    expect(asteroide.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando asteroide chocar_con(bomba)' do
    asteroide = Asteroide.new
    bomba = Bomba.new
    asteroide.chocar_con(bomba)
    expect(asteroide.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando asteroide chocar_con(misil)' do
    asteroide = Asteroide.new
    misil = Misil.new
    asteroide.chocar_con(misil)
    expect(asteroide.obtener_vida).to eq 100
  end

  it 'deberia retornar 110 cuando asteroide chocar_con(nave)' do
    asteroide = Asteroide.new
    nave = Nave.new
    asteroide.chocar_con(nave)
    expect(asteroide.obtener_masa).to eq 110
  end

   it 'deberia retornar 40 cuando asteroide chocar_con(estrella)' do
    asteroide = Asteroide.new
    estrella = Estrella.new
    asteroide.chocar_con(estrella)
    expect(asteroide.obtener_vida).to eq 100
  end
end