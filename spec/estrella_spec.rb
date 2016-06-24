require 'rspec'
require_relative '../model/estrella'
require_relative '../model/objeto_espacial'

describe 'Estrella' do
  
  it 'deberia retornar 100 cuando hago obtener_vida de una estrella nueva' do
    estrella = Estrella.new(100, 0)
    expect(estrella.obtener_vida).to eq 100
  end
  
  it 'deberia retornar 100 cuando hago obtener_masa de una estrella nueva' do
    estrella = Estrella.new(100,100)
    expect(estrella.obtener_masa).to eq 100
  end
  
  it 'deberia retornar estrella cuando hago obtener_nombre' do
    estrella = Estrella.new(10,10)
    expect(estrella.obtener_nombre).to eq "estrella"
  end

  it 'deberia retornar 0 cuando hago chocar_con(estrella)' do
    estrella = Estrella.new(300,100)
    estrella1 = Estrella.new(200,100)
    estrella.mapa_efectos
    expect(estrella.chocar_con(estrella1)).to eq 0
  end

  it 'deberia retornar 0 cuando nave choca_con(asteroide)' do
    estrella = Estrella.new(200,100)
    asteroide = Asteroide.new(100,80)
    estrella.mapa_efectos
    expect(estrella.chocar_con(asteroide)).to eq 0
  end

  it 'deberia retornar 0 cuando nave choca_con(bomba)' do
    estrella = Estrella.new(200,100)
    bomba = Bomba.new(100,80)
    estrella.mapa_efectos
    expect(estrella.chocar_con(bomba)).to eq 0
  end

end