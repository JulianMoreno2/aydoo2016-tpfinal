require 'rspec'
require_relative '../model/asteroide'
require_relative '../model/objeto_espacial'

describe 'Asteroide' do

  it 'deberia retornar 100 cuando hago obtener_vida de un asteoroide nuevo' do
    asteroide = Asteroide.new(100, 0)
    expect(asteroide.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando hago obtener_masa de un asteroide nuevo' do
    asteroide = Asteroide.new(100,100)
    expect(asteroide.obtener_masa).to eq 100
  end

  it 'deberia retornar asteroide cuando hago obtener_nombre' do
    asteroide = Asteroide.new(10,10)
    expect(asteroide.obtener_nombre).to eq "asteroide"
  end
  
  it 'deberia retornar 100 cuando asteroide chocar_con(asteroide)' do
    asteroide = Asteroide.new(100,100)
    asteroide1 = Asteroide.new(100,100)
    expect(asteroide.chocar_con(asteroide1)).to eq 100
  end

  it 'deberia retornar 100 cuando asteroide chocar_con(bomba)' do
    asteroide = Asteroide.new(100,100)
    bomba = Bomba.new(100,100)
    expect(asteroide.chocar_con(bomba)).to eq 100
  end

  it 'deberia retornar 100 cuando asteroide chocar_con(misil)' do
    asteroide = Asteroide.new(100,100)
    misil = Misil.new(100,100)
    expect(asteroide.chocar_con(misil)).to eq 100
  end

  it 'deberia retornar 110 cuando asteroide chocar_con(nave)' do
    asteroide = Asteroide.new(100,100)
    nave = Nave.new(100,100)
    asteroide.chocar_con(nave)
    expect(asteroide.obtener_masa).to eq 110
  end

   it 'deberia retornar 40 cuando asteroide chocar_con(estrella)' do
    asteroide = Asteroide.new(40,100)
    estrella = Estrella.new(100,100)
    expect(asteroide.chocar_con(estrella)).to eq 40
  end
end