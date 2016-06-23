class EfectoDestructivo
  
  def initialize(vida_destruida)
  	@vida_destruida = vida_destruida
  end

  def ejecutar_efecto(vida)
    vida = vida - @vida_destruida
    if vida < 0
    	vida = 0
    end
    return vida
  end
end