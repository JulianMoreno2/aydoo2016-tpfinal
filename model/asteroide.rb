require_relative '../model/objeto_espacial'

class Asteroide < ObjetoEspacial

  def mapa_efectos
  	@hash_map = {"asteroide" => EfectoNulo.new(0), "bomba" => EfectoNulo.new(0)}
  end
  
  def chocar_con(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(@vida)
  end

  def obtener_nombre
    return "asteroide"
  end
end