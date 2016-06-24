require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_nulo'

class Misil < ObjetoEspacial

  def mapa_efectos
    @hash_map = {"misil" => EfectoDestructivo.new(100), "nave" => EfectoDestructivo.new(100), "bomba" => EfectoNulo.new(0)}
  end

  def chocar_con(objeto_espacial)
  	 @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
  end

  def obtener_nombre
    return "misil"
  end

end