require 'test_helper'

class ContatoTest < ActionMailer::TestCase
  test "mensagem" do
    mail = Contato.mensagem
    assert_equal "Mensagem", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
