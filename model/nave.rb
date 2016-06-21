class Nave

  def initialize
    @vida = "100"
    @masa = "100"
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

  def chocar_con(nave)
    @masa = (@masa.to_i + nave.obtener_masa.to_i).to_s
    nave.modificar_vida("0")
    nave.modificar_masa("0")
    return @masa
  end

  def obtener_estado
  	return "destruido"
  end
end