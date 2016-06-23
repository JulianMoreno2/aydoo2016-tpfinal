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
end