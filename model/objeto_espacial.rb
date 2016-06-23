class ObjetoEspacial

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @estado = "construido"
  end

  def obtener_vida
    @vida
  end

  def obtener_masa
  	@masa
  end

  def modificar_vida(vida)
  	@vida = vida
  end

  def modificar_masa(masa)
    @masa = masa
  end

end