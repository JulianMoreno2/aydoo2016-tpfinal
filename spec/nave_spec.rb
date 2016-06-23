require 'rspec'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/objeto_espacial'

describe 'Nave' do
  it 'deberia retornar 100 cuando hago obtener_vida de una nave nueva' do
    nave = Nave.new(100, 0)
    expect(nave.obtener_vida).to eq 100
  end

  it 'deberia retornar 100 cuando hago obtener_masa de una nave nueva' do
    nave = Nave.new(100,100)
    expect(nave.obtener_masa).to eq 100
  end

  it 'deberia retornar nave cuando hago obtener_nombre' do
    nave = Nave.new(10,10)
    expect(nave.obtener_nombre).to eq "nave"
  end

  it 'deberia retornar 0 cuando hago chocar_con(nave)' do
    nave = Nave.new(100,100)
    nave1 = Nave.new(100,100)
    nave.mapa_efectos
    expect(nave.chocar_con(nave1)).to eq 0
  end

  it 'deberia retornar 20 cuando nave choca_con(misil)' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,80)
    nave.mapa_efectos
    expect(nave.chocar_con(misil)).to eq 20
  end

end