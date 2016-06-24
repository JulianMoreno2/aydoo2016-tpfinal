require_relative '../model/objeto_espacial'

class Estrella < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = {"estrella" => EfectoDestructivo.new(@vida), "asteroide" => EfectoDestructivo.new(@vida), "bomba" => EfectoDestructivo.new(@vida)}
  end
  
  def chocar_con(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
  end

  def obtener_nombre
    return "estrella"
  end
end