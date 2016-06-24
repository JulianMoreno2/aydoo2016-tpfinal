require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_masa_reductor'
require_relative '../model/efecto_constructor'

class Nave < ObjetoEspacial

  def mapa_efectos
    @hash_map = {"nave" => EfectoDestructivo.new(100), "misil" => EfectoDestructivo.new(80), "bomba" => EfectoDestructivo.new(50), "asteroide" => EfectoMasaReductor.new(-50), "estrella" => EfectoConstructor.new}
  end

  def chocar_con(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
  end

  def obtener_nombre
    return "nave"
  end
end