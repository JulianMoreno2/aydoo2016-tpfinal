require_relative '../efectos/efecto'

class EfectoConstructivo < Efecto

  def ejecutar_efecto(objeto1, objeto2)
    objeto1.modificar_vida(objeto1.obtener_vida + objeto2.obtener_vida)
  end

end