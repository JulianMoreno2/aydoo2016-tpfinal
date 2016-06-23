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
    expect(bomba.obtener_nombre).to eq "bomba"
  end
end