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
end