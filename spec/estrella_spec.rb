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
end