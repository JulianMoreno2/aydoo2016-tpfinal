require 'rspec'
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'ObjetoEspacial' do
  it 'deberia retornar 100 cuando hago obtener_vida de un objeto espacial' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_vida).to eq 100
  end
    
  it 'deberia retornar 100 cuando hago obtener_masa de un objeto espacial' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_masa).to eq 100
  end
    
  it 'deberia retornar estado construido se crea el objeto espacial' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_estado.mostrar).to eq "construido"
  end
  
  it 'deberia retornar ObjetoEspacial cuando hago obtener_nombre' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_nombre).to eq ObjetoEspacial
  end

  it 'deberia crearse el ObjetoEspacial con 100 de vida por defecto' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_vida).to eq 100
  end

  it 'deberia crearse el ObjetoEspacial con 100 de masa por defecto' do
    objEspacial = ObjetoEspacial.new
    expect(objEspacial.obtener_masa).to eq 100
  end
  
end