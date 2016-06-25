require_relative '../model/objeto_espacial'

class Estrella < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = {Estrella => EfectoDestructivo.new(@vida), Asteroide => EfectoDestructivo.new(@vida), Bomba => EfectoDestructivo.new(@vida), Misil => EfectoNulo.new(0), Nave => EfectoDestructivo.new(@vida)}
  end

end