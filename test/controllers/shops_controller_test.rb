require "test_helper"

class ShopsControllerTest < ActionController::TestCase

  def shop
    @shop ||= shops :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Shop.count') do
      post :create, shop: { address: @shop.address, description: @shop.description, flavor: @shop.flavor, rating: @shop.rating, title: @shop.title }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  def test_show
    get :show, id: shop
    assert_response :success
  end

  def test_edit
    get :edit, id: shop
    assert_response :success
  end

  def test_update
    put :update, id: shop, shop: { address: @shop.address, description: @shop.description, flavor: @shop.flavor, rating: @shop.rating, title: @shop.title }
    assert_redirected_to shop_path(assigns(:shop))
  end

  def test_destroy
    assert_difference('Shop.count', -1) do
      delete :destroy, id: shop
    end

    assert_redirected_to shops_path
  end
end
