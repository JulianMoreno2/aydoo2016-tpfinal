require_relative '../model/objeto_espacial'

class Bomba < ObjetoEspacial

  def mapa_efectos
  	@hash_map = { "bomba" => EfectoDestructivo.new(100), "nave" => EfectoDestructivo.new(100), "misil" => EfectoDestructivo.new(@vida/2), "asteroide" => EfectoDestructivo.new(@vida), "estrella" => EfectoDestructivo.new(100)}
  end
  
  def obtener_nombre
    return "bomba"
  end
end