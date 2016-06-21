require 'rspec'
require_relative '../model/nave'

describe 'Nave' do
  it 'deberia retornar 100 cuando hago obtener_vida de una nave nueva' do
    nave = Nave.new
    expect(nave.obtener_vida).to eq "100"
  end

  it 'deberia retornar 100 cuando hago obtener_masa de una nave nueva' do
    nave = Nave.new
    expect(nave.obtener_masa).to eq "100"
  end

  it 'deberia retornar 200 cuando hago chocar_con(nave)' do
    nave = Nave.new
    nave1 = Nave.new
    expect(nave.chocar_con(nave1)).to eq "200"
  end

  it 'deberia retornar "destruido" de nave1 cuando hago obtener_estado' do
    nave = Nave.new
    nave1 = Nave.new
    masa_nave = nave.chocar_con(nave1)
    expect(nave1.obtener_estado).to eq "destruido"
  end
end