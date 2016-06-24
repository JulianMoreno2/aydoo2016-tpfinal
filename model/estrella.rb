require_relative '../model/objeto_espacial'

class Estrella < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = {"estrella" => EfectoDestructivo.new(@vida), "asteroide" => EfectoDestructivo.new(@vida), "bomba" => EfectoDestructivo.new(@vida), "misil" => EfectoNulo.new(0), "nave" => EfectoDestructivo.new(@vida)}
  end

  def obtener_nombre
    return "estrella"
  end
end