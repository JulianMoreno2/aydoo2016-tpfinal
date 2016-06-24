require_relative '../model/objeto_espacial'

class Estrella < ObjetoEspacial
  def obtener_nombre
    return "estrella"
  end
end