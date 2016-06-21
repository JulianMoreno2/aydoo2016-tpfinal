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

  def recibir_choque_de(nave)
    @masa = (@masa.to_i + nave.obtener_masa.to_i).to_s
  end
end