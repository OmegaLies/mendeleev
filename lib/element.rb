class Element < OpenStruct
  def to_s
    <<~ELEMENT
      Порядковый номер: #{number}
      Название: #{name}
      Первооткрыватель: #{discoverer}
      Выделен в чистом виде в #{year} г.
      Плотность: #{density} г/см³
    ELEMENT
  end
end
