require_relative '../dominio/objeto_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_nulo'

class Estrella < ObjetoEspacial

  def mapa_efectos
    @hash_map = {Estrella => EfectoDestructivo.new(@vida),
                 Asteroide => EfectoDestructivo.new(@vida), 
                 Bomba => EfectoDestructivo.new(@vida),
                 Misil => EfectoNulo.new,
                 Nave => EfectoDestructivo.new(@vida)}
  end

end