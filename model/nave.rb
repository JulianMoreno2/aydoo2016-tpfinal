require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructor'

class Nave < ObjetoEspacial

  def mapa_efectos
    @hash_map = {"nave" => EfectoDestructivo.new(100), "misil" => EfectoDestructivo.new(80), "bomba" => EfectoDestructivo.new(50), "asteroide" => EfectoMasa.new(10,50), "estrella" => EfectoConstructor.new}
  end

  def chocar_con(objeto_espacial)
  	mapa_efectos
  	objeto_espacial.mapa_efectos
  	objeto_espacial.recibe_choque_de(self)
    self.recibe_choque_de(objeto_espacial)
  end

  def recibe_choque_de(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
  end

  def obtener_nombre
    return "nave"
  end
end