class Element
  def initialize(params)
    @number = params[:number]
    @name = params[:name]
    @density = params[:density]
    @year = params[:year]
    @discoverer = params[:discoverer]
  end

  def to_s
    <<~ELEMENT
      Порядковый номер: #{@number}
      Название: #{@name}
      Первооткрыватель: #{@discoverer}
      Выделен в чистом виде в #{@year} г.
      Плотность: #{@density} г/см³
    ELEMENT
  end
end
