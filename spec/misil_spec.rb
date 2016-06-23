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

  it 'deberia retornar 0 cuando hago chocar_con(misil)' do
    misil = Misil.new(100,100)
    misil1 = Misil.new(100,100)
    misil.mapa_efectos
    expect(misil.chocar_con(misil1)).to eq 0
  end

  it 'deberia retornar 20 cuando misil choca_con(nave)' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    misil.mapa_efectos
    expect(misil.chocar_con(nave)).to eq 0
  end

end