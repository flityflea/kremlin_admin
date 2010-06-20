class PagesController < ApplicationController
  def Concertos
    @title = "Concertos Agendados"
  end

  def Curtas
    @title = "Noticias Curtas"
  end

  def Newsletter
    @title = "Lista de Subscritores da Newsletter"
  end

  def Guestbook
    @title = "Guestbook"
  end

  def AdicionarMedia
    @title = "Adicionar Media"
  end

end
