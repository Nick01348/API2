require 'test_helper'

class SeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seccion = seccions(:one)
  end

  test "should get index" do
    get seccions_url, as: :json
    assert_response :success
  end

  test "should create seccion" do
    assert_difference('Seccion.count') do
      post seccions_url, params: { seccion: { seccionProducto: @seccion.seccionProducto } }, as: :json
    end

    assert_response 201
  end

  test "should show seccion" do
    get seccion_url(@seccion), as: :json
    assert_response :success
  end

  test "should update seccion" do
    patch seccion_url(@seccion), params: { seccion: { seccionProducto: @seccion.seccionProducto } }, as: :json
    assert_response 200
  end

  test "should destroy seccion" do
    assert_difference('Seccion.count', -1) do
      delete seccion_url(@seccion), as: :json
    end

    assert_response 204
  end
end
