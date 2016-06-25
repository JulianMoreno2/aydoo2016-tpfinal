require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'

class Asteroide < ObjetoEspacial
  
  def mapa_efectos
  	@hash_map = {Asteroide => EfectoNulo.new(0), Bomba => EfectoNulo.new(0), Misil => EfectoNulo.new(0), Nave => EfectoMasa.new(0,0), Estrella => EfectoNulo.new(0)}
  end
  
end