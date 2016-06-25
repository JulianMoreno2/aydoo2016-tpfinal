require 'rspec'
require_relative '../model/bomba'
require_relative '../model/objeto_espacial'

describe 'Bomba' do
  it 'deberia retornar 100 cuando hago obtener_vida de una bomba nueva' do
    bomba = Bomba.new(100, 0)
    expect(bomba.obtener_vida).to eq 100
  end
  
  it 'deberia retornar 100 cuando hago obtener_masa de una bomba nueva' do
    bomba = Bomba.new(100,100)
    expect(bomba.obtener_masa).to eq 100
  end
  
  it 'deberia retornar bomba cuando hago obtener_nombre' do
    bomba = Bomba.new(10,10)
    expect(bomba.obtener_nombre).to eq Bomba
  end

  it 'deberia retornar 0 cuando hago chocar_con(bomba)' do
    bomba = Bomba.new(100,100)
    bomba1 = Bomba.new(100,100)
    bomba.chocar_con(bomba1)
    expect(bomba.obtener_vida).to eq 0
  end
  
  it 'deberia retornar 0 cuando bomba choca_con(nave)' do
    nave = Nave.new(100,100)
    bomba = Bomba.new(100,100)
    bomba.chocar_con(nave)
    expect(bomba.obtener_vida).to eq 0
  end

  it 'deberia retornar 50 cuando bomba choca_con(misil)' do
    misil = Misil.new(100,100)
    bomba = Bomba.new(100,100)
    bomba.chocar_con(misil)
    expect(bomba.obtener_vida).to eq 50
  end

  it 'deberia retornar 0 cuando bomba choca_con(asteroide)' do
    asteroide = Asteroide.new(100,100)
    bomba = Bomba.new(100,100)
    bomba.chocar_con(asteroide)
    expect(bomba.obtener_vida).to eq 0
  end

  it 'deberia retornar 0 cuando bomba choca_con(asteroide) diferencia de vida' do
    asteroide = Asteroide.new(200,100)
    bomba = Bomba.new(300,100)
    bomba.chocar_con(asteroide)
    expect(bomba.obtener_vida).to eq 0
  end

  it 'deberia retornar 200 cuando bomba choca_con(estrella)' do
    estrella = Estrella.new(200,100)
    bomba = Bomba.new(300,100)
    bomba.chocar_con(estrella)
    expect(bomba.obtener_vida).to eq 200
  end
end