require "test_helper"

class RestPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rest_price = rest_prices(:one)
  end

  test "should get index" do
    get rest_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_rest_price_url
    assert_response :success
  end

  test "should create rest_price" do
    assert_difference("RestPrice.count") do
      post rest_prices_url, params: { rest_price: { prices_id: @rest_price.prices_id, resturants_id: @rest_price.resturants_id } }
    end

    assert_redirected_to rest_price_url(RestPrice.last)
  end

  test "should show rest_price" do
    get rest_price_url(@rest_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_rest_price_url(@rest_price)
    assert_response :success
  end

  test "should update rest_price" do
    patch rest_price_url(@rest_price), params: { rest_price: { prices_id: @rest_price.prices_id, resturants_id: @rest_price.resturants_id } }
    assert_redirected_to rest_price_url(@rest_price)
  end

  test "should destroy rest_price" do
    assert_difference("RestPrice.count", -1) do
      delete rest_price_url(@rest_price)
    end

    assert_redirected_to rest_prices_url
  end
end
