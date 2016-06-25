class EfectoNulo

  def initialize(vida_destruida)
  	@vida_destruida = vida_destruida
  end

  def ejecutar_efecto(objeto1, objeto2)
    return objeto1.obtener_vida
  end

end