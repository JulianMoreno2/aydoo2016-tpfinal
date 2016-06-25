require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'

class Asteroide < ObjetoEspacial

  def mapa_efectos
  	@hash_map = {"asteroide" => EfectoNulo.new(0), "bomba" => EfectoNulo.new(0), "misil" => EfectoNulo.new(0), "nave" => EfectoMasa.new(0,0), "estrella" => EfectoNulo.new(0)}
  end
  
  def obtener_nombre
    return "asteroide"
  end
    
end