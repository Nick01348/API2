require 'test_helper'

class FavoritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorito = favoritos(:one)
  end

  test "should get index" do
    get favoritos_url, as: :json
    assert_response :success
  end

  test "should create favorito" do
    assert_difference('Favorito.count') do
      post favoritos_url, params: { favorito: { producto_id: @favorito.producto_id, usuario_id: @favorito.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show favorito" do
    get favorito_url(@favorito), as: :json
    assert_response :success
  end

  test "should update favorito" do
    patch favorito_url(@favorito), params: { favorito: { producto_id: @favorito.producto_id, usuario_id: @favorito.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy favorito" do
    assert_difference('Favorito.count', -1) do
      delete favorito_url(@favorito), as: :json
    end

    assert_response 204
  end
end
