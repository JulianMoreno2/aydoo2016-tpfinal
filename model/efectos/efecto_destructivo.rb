require_relative '../efectos/efecto'

class EfectoDestructivo < Efecto

  def initialize(vida_destruida)
    @vida_destruida = vida_destruida
  end

  def ejecutar_efecto(objeto1,objeto2)
    if (objeto1.obtener_vida - @vida_destruida) < 0
      objeto1.modificar_vida(0)
    else
      objeto1.modificar_vida(objeto1.obtener_vida - @vida_destruida)
    end
    return objeto1.obtener_vida
  end

end