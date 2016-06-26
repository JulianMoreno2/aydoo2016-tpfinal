class EfectoConstructivo
  def ejecutar_efecto(objeto1, objeto2)
    objeto1.modificar_vida(objeto1.obtener_vida + objeto2.obtener_vida)
  end
end