# -*- encoding : utf-8 -*-
class SiteController < ActionController::Base
  
  def empresa
    @empresa = "active"
  end

  def servicos
    @servicos = "active"
  end

  def validacao
    @servicos = "active"
  end

  def certificacao
    @servicos = "active"
  end

  def consultoria
    @consultoria = "active"
  end

  def treinamento
    @treinamentos = "active"
  end

  def contato
    @contato = "active"
  end

  def envia_contato
    unless params[:nome].empty? or params[:email].empty? or params[:mensagem].empty?
      Contato.mensagem(params[:nome], params[:email], params[:mensagem]).deliver
      notice = "Mensagem enviada com sucesso, aguarde nossa resposta"
    else
      notice = "Mensagem não enviada, todos os campos são obrigatórios"
    end
    redirect_to action:"contato", controller:"site", notice: notice
  end
end
