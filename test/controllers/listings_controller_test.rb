require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { addons: @listing.addons, basement: @listing.basement, bedrooms: @listing.bedrooms, category: @listing.category, exterior: @listing.exterior, fireplace: @listing.fireplace, fullbaths: @listing.fullbaths, garage: @listing.garage, halfbaths: @listing.halfbaths, hvac: @listing.hvac, listdate: @listing.listdate, lotdescription: @listing.lotdescription, price: @listing.price, remarks: @listing.remarks, rooms: @listing.rooms, style: @listing.style, taxes: @listing.taxes, town: @listing.town, yearbuilt: @listing.yearbuilt }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { addons: @listing.addons, basement: @listing.basement, bedrooms: @listing.bedrooms, category: @listing.category, exterior: @listing.exterior, fireplace: @listing.fireplace, fullbaths: @listing.fullbaths, garage: @listing.garage, halfbaths: @listing.halfbaths, hvac: @listing.hvac, listdate: @listing.listdate, lotdescription: @listing.lotdescription, price: @listing.price, remarks: @listing.remarks, rooms: @listing.rooms, style: @listing.style, taxes: @listing.taxes, town: @listing.town, yearbuilt: @listing.yearbuilt }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
