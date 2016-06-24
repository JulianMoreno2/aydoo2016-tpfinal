require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructor'

class Nave < ObjetoEspacial

  def mapa_efectos
    @hash_map = {"nave" => EfectoDestructivo.new(100), "misil" => EfectoDestructivo.new(80), "bomba" => EfectoDestructivo.new(50), "asteroide" => EfectoMasa.new(10,50), "estrella" => EfectoConstructor.new}
  end

  def obtener_nombre
    return "nave"
  end
end