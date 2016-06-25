require 'rspec'
require 'spec_helper'
require_relative '../model/dominio/estrella'
require_relative '../model/dominio/objeto_espacial'

describe 'Estrella' do
  
  it 'deberia retornar 100 cuando hago obtener_vida de una estrella nueva' do
    estrella = Estrella.new
    expect(estrella.obtener_vida).to eq 100
  end
  
  it 'deberia retornar 100 cuando hago obtener_masa de una estrella nueva' do
    estrella = Estrella.new
    expect(estrella.obtener_masa).to eq 100
  end
  
  it 'deberia retornar estrella cuando hago obtener_nombre' do
    estrella = Estrella.new
    expect(estrella.obtener_nombre).to eq Estrella
  end

  it 'deberia retornar 0 cuando hago chocar_con(estrella)' do
    estrella = Estrella.new
    estrella1 = Estrella.new
    estrella.chocar_con(estrella1)
    expect(estrella.obtener_vida).to eq 0
  end

  it 'deberia retornar 0 cuando estrella choca_con(asteroide)' do
    estrella = Estrella.new
    asteroide = Asteroide.new
    estrella.chocar_con(asteroide)
    expect(estrella.obtener_vida).to eq 0
  end

  it 'deberia retornar 0 cuando estrella choca_con(bomba)' do
    estrella = Estrella.new
    bomba = Bomba.new
    estrella.chocar_con(bomba)
    expect(estrella.obtener_vida).to eq 0
  end

  it 'deberia retornar 100 cuando estrella choca_con(misil)' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.chocar_con(misil)
    expect(estrella.obtener_vida).to eq 100
  end

  it 'deberia retornar 0 cuando estrella choca_con(nave)' do
    estrella = Estrella.new
    nave = Nave.new
    estrella.chocar_con(nave)
    expect(estrella.obtener_vida).to eq 0
  end
end