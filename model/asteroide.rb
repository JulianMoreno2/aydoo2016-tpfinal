require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_masa'

class Asteroide < ObjetoEspacial

  def mapa_efectos
  	@hash_map = {"asteroide" => EfectoNulo.new(0), "bomba" => EfectoNulo.new(0), "misil" => EfectoNulo.new(0), "nave" => EfectoMasa.new(10)}
  end
  
  def chocar_con(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self, objeto_espacial)
  end

  def obtener_nombre
    return "asteroide"
  end
end