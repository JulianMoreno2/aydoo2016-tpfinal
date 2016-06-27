require_relative '../dominio/objeto_espacial'
require_relative '../efectos/efecto_nulo'
require_relative '../efectos/efecto_masa'

class Asteroide < ObjetoEspacial

  def mapa_efectos
  	@hash_map = {Asteroide => EfectoNulo.new, 
                 Bomba => EfectoNulo.new, 
                 Misil => EfectoNulo.new, 
                 Nave => EfectoMasa.new(10), 
                 Estrella => EfectoNulo.new}
  end

end