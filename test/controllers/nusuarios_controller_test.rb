require 'test_helper'

class NusuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nusuario = nusuarios(:one)
  end

  test "should get index" do
    get nusuarios_url, as: :json
    assert_response :success
  end

  test "should create nusuario" do
    assert_difference('Nusuario.count') do
      post nusuarios_url, params: { nusuario: { apellido: @nusuario.apellido, email: @nusuario.email, fechaNacimiento: @nusuario.fechaNacimiento, nombre: @nusuario.nombre, password: @nusuario.password } }, as: :json
    end

    assert_response 201
  end

  test "should show nusuario" do
    get nusuario_url(@nusuario), as: :json
    assert_response :success
  end

  test "should update nusuario" do
    patch nusuario_url(@nusuario), params: { nusuario: { apellido: @nusuario.apellido, email: @nusuario.email, fechaNacimiento: @nusuario.fechaNacimiento, nombre: @nusuario.nombre, password: @nusuario.password } }, as: :json
    assert_response 200
  end

  test "should destroy nusuario" do
    assert_difference('Nusuario.count', -1) do
      delete nusuario_url(@nusuario), as: :json
    end

    assert_response 204
  end
end
