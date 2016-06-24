class EfectoConstructor
  def ejecutar_efecto(objeto1, objeto2)
    objeto1.modificar_masa(objeto1.obtener_masa + objeto2.obtener_masa)
  end
end