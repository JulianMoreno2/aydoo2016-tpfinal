require_relative '../model/objeto_espacial'

class Bomba < ObjetoEspacial
  
  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @estado = EstadoConstruido.new
  end
  
  def mapa_efectos
  	@hash_map = { Bomba => EfectoDestructivo.new(100), Nave => EfectoDestructivo.new(100), Misil => EfectoDestructivo.new(@vida/2), Asteroide => EfectoDestructivo.new(@vida), Estrella => EfectoDestructivo.new(100)}
  end
  
end