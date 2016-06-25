require 'rspec'
require_relative '../model/misil'
require_relative '../model/objeto_espacial'

describe 'Misil' do
  it 'deberia retornar 100 cuando hago obtener_vida de un misil nuevo' do
    misil = Misil.new(100, 0)
    expect(misil.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando hago obtener_masa de un misil nuevo' do
    misil = Misil.new(100,100)
    expect(misil.obtener_masa).to eq 100
  end

  it 'deberia retornar misil cuando hago obtener_nombre' do
    misil = Misil.new(10,10)
    expect(misil.obtener_nombre).to eq Misil
  end
  
  it 'deberia retornar 0 cuando hago chocar_con(misil)' do
    misil = Misil.new(100,100)
    misil1 = Misil.new(100,100)
    misil.chocar_con(misil1)
    expect(misil.obtener_vida).to eq 0
  end
  
  it 'deberia retornar 0 cuando misil choca_con(nave)' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    misil.chocar_con(nave)
    expect(misil.obtener_vida).to eq 0
  end
  
  it 'deberia retornar 100 cuando misil choca_con(nave)' do
    nave = Nave.new(100,100)
    misil = Misil.new(200,100)
    misil.mapa_efectos
    misil.chocar_con(nave)
    expect(misil.obtener_vida).to eq 100
  end

  it 'deberia retornar 200 cuando misil choca_con(bomba)' do
    bomba = Bomba.new(100,100)
    misil = Misil.new(200,100)
    misil.chocar_con(bomba)
    expect(misil.obtener_vida).to eq 200
  end

  it 'deberia retornar 150 cuando misil choca_con(asteroide)' do
    asteroide = Asteroide.new(100,100)
    misil = Misil.new(150,100)
    misil.chocar_con(asteroide)
    expect(misil.obtener_vida).to eq 150
  end

  it 'deberia retornar 150 cuando misil choca_con(estrella)' do
    estrella = Estrella.new(100,100)
    misil = Misil.new(150,100)
    misil.chocar_con(estrella)
    expect(misil.obtener_vida).to eq 150
  end
  
end