class Contato < ActionMailer::Base

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contato.mensagem.subject
  #
  def mensagem nome, email, mensagem
    @nome = nome
    @email = email
    @mensagem = mensagem
    mail to: "contato@qvali.com.br", subject: "Contato site"
  end
end
