require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructor'

class Nave < ObjetoEspacial

  def mapa_efectos
    @hash_map = {Nave => EfectoDestructivo.new(100), Misil => EfectoDestructivo.new(80), Bomba => EfectoDestructivo.new(50), Asteroide => EfectoMasa.new(10,50), Estrella => EfectoConstructor.new}
  end

end