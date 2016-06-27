require_relative '../dominio/objeto_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_nulo'

class Misil < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = { Misil => EfectoDestructivo.new(100), 
                  Nave => EfectoDestructivo.new(100), 
                  Bomba => EfectoNulo.new, 
                  Asteroide => EfectoNulo.new, 
                  Estrella => EfectoNulo.new}
  end

end