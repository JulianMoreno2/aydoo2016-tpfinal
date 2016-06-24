class ObjetoEspacial

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @estado = EstadoConstruido.new
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
  
  def obtener_estado
    @estado
  end
  
  def chocar_con(objeto_espacial)
    mapa_efectos
    objeto_espacial.mapa_efectos
    objeto_espacial.recibe_choque_de(self)
    self.recibe_choque_de(objeto_espacial)
  end
  
  def recibe_choque_de(objeto_espacial)
    @hash_map[objeto_espacial.obtener_nombre].ejecutar_efecto(self,objeto_espacial)
  end

end