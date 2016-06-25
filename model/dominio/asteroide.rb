require_relative '../dominio/objeto_espacial'
require_relative '../efectos/efecto_nulo'
require_relative '../efectos/efecto_masa'

class Asteroide < ObjetoEspacial
  
  def mapa_efectos
  	@hash_map = {Asteroide => EfectoNulo.new(0), Bomba => EfectoNulo.new(0), Misil => EfectoNulo.new(0), Nave => EfectoMasa.new(0,0), Estrella => EfectoNulo.new(0)}
  end
  
end