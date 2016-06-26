require_relative '../dominio/objeto_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_constructivo'

class Nave < ObjetoEspacial
  
  def mapa_efectos
    @hash_map = {Nave => EfectoDestructivo.new(100), Misil => EfectoDestructivo.new(80), Bomba => EfectoDestructivo.new(50), Asteroide => EfectoMasa.new(10,50), Estrella => EfectoConstructivo.new}
  end

end