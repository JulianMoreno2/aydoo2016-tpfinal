require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_nulo'

class Misil < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = {Misil => EfectoDestructivo.new(100), Nave => EfectoDestructivo.new(100), Bomba => EfectoNulo.new(0), Asteroide => EfectoNulo.new(0), Estrella => EfectoNulo.new(0)}
  end

end