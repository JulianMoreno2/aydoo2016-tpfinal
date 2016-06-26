require_relative '../excepciones/numero_invalido_exception'

class ObjetoEspacial

  def initialize
    @vida = 100
    @masa = 100
    @estado = EstadoConstruido.new
  end

  def obtener_vida
    @vida
  end

  def obtener_masa
  	@masa
  end

  def modificar_vida(vida)
    if vida < 0
      raise NumeroInvalidoException, "La vida ingresada debe ser mayor a cero"
    end
    @vida = vida
  end

  def modificar_masa(masa)
    if masa < 0
      raise NumeroInvalidoException, "La masa ingresada debe ser mayor a cero"
    end
    @masa = masa
  end
  
  def obtener_estado
    @estado
  end

  def modificar_estado(estado)
    @estado = estado
  end
  
  def obtener_nombre
    self.class
  end

  def chocar_con(objeto_espacial)
    if self.obtener_vida != 0 && objeto_espacial.obtener_vida != 0
      mapa_efectos
      objeto_espacial.mapa_efectos
      
      objeto_espacial_aux = objeto_espacial.class.new
      objeto_espacial_aux.modificar_vida(objeto_espacial.obtener_vida)
      objeto_espacial_aux.modificar_masa(objeto_espacial.obtener_masa)

      self_aux = self.class.new
      self_aux.modificar_vida(self.obtener_vida)
      self_aux.modificar_masa(self.obtener_masa)
      
      objeto_espacial.recibe_choque_de(self_aux)
      self.recibe_choque_de(objeto_espacial_aux)
    end
  end
  
  def recibe_choque_de(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
    if obtener_vida == 0
      modificar_estado(EstadoDestruido.new)
    end
  end

end