class EfectoMasa

  def initialize(masa_ganada)
  	@masa_ganada = masa_ganada
  end

  def ejecutar_efecto(objeto1,objeto2)
    objeto1.modificar_masa(objeto1.obtener_masa + ((objeto2.obtener_masa * @masa_ganada) /100))
  end

end