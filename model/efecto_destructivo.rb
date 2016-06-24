class EfectoDestructivo
  
  def initialize(vida_destruida)
  	@vida_destruida = vida_destruida
  end

  def ejecutar_efecto(objeto1,objeto2)
    objeto1.modificar_vida(objeto1.obtener_vida - @vida_destruida)
    if objeto1.obtener_vida < 0
    	objeto1.modificar_vida(0)
    end
    return objeto1.obtener_vida
  end
end