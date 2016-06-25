class EfectoMasa
  
  def initialize(masa_ganada, masa_perdida)
  	@masa_ganada = masa_ganada
  	@masa_perdida = masa_perdida
  end
  
  def ejecutar_efecto(objeto1,objeto2)
    masa_objeto2 = objeto1.obtener_masa + ((objeto2.obtener_masa * @masa_ganada) /100)
    masa_objeto1 = objeto1.obtener_masa - ((objeto2.obtener_masa * @masa_perdida) /100)
    objeto1.modificar_masa(masa_objeto1)
    objeto2.modificar_masa(masa_objeto2)
  end
end