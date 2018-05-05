require 'test_helper'

class CaractersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracter = caracters(:one)
  end

  test "should get index" do
    get caracters_url
    assert_response :success
  end

  test "should get new" do
    get new_caracter_url
    assert_response :success
  end

  test "should create caracter" do
    assert_difference('Caracter.count') do
      post caracters_url, params: { caracter: { texto: @caracter.texto } }
    end

    assert_redirected_to caracter_url(Caracter.last)
  end

  test "should show caracter" do
    get caracter_url(@caracter)
    assert_response :success
  end

  test "should get edit" do
    get edit_caracter_url(@caracter)
    assert_response :success
  end

  test "should update caracter" do
    patch caracter_url(@caracter), params: { caracter: { texto: @caracter.texto } }
    assert_redirected_to caracter_url(@caracter)
  end

  test "should destroy caracter" do
    assert_difference('Caracter.count', -1) do
      delete caracter_url(@caracter)
    end

    assert_redirected_to caracters_url
  end
end
