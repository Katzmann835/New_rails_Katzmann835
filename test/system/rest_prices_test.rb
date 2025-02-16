require "application_system_test_case"

class RestPricesTest < ApplicationSystemTestCase
  setup do
    @rest_price = rest_prices(:one)
  end

  test "visiting the index" do
    visit rest_prices_url
    assert_selector "h1", text: "Rest prices"
  end

  test "should create rest price" do
    visit rest_prices_url
    click_on "New rest price"

    fill_in "Prices", with: @rest_price.prices_id
    fill_in "Resturants", with: @rest_price.resturants_id
    click_on "Create Rest price"

    assert_text "Rest price was successfully created"
    click_on "Back"
  end

  test "should update Rest price" do
    visit rest_price_url(@rest_price)
    click_on "Edit this rest price", match: :first

    fill_in "Prices", with: @rest_price.prices_id
    fill_in "Resturants", with: @rest_price.resturants_id
    click_on "Update Rest price"

    assert_text "Rest price was successfully updated"
    click_on "Back"
  end

  test "should destroy Rest price" do
    visit rest_price_url(@rest_price)
    click_on "Destroy this rest price", match: :first

    assert_text "Rest price was successfully destroyed"
  end
end
