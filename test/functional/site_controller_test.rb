require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get empresa" do
    get :empresa
    assert_response :success
  end

  test "should get servicos" do
    get :servicos
    assert_response :success
  end

  test "should get validacao" do
    get :validacao
    assert_response :success
  end

  test "should get certificacao" do
    get :certificacao
    assert_response :success
  end

  test "should get consultoria" do
    get :consultoria
    assert_response :success
  end

  test "should get treinamento" do
    get :treinamento
    assert_response :success
  end

end
