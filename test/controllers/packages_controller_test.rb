require 'test_helper'

class PackagesControllerTest < ActionController::TestCase
  setup do
    @package = packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package" do
    assert_difference('Package.count') do
      post :create, package: { delivered_at: @package.delivered_at, dispatched_at: @package.dispatched_at, height: @package.height, lenght: @package.lenght, receiver_agency_id: @package.receiver_agency_id, receiver_id: @package.receiver_id, sender_agency_id: @package.sender_agency_id, sender_id: @package.sender_id, status: @package.status, weight: @package.weight, width: @package.width }
    end

    assert_redirected_to package_path(assigns(:package))
  end

  test "should show package" do
    get :show, id: @package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package
    assert_response :success
  end

  test "should update package" do
    patch :update, id: @package, package: { delivered_at: @package.delivered_at, dispatched_at: @package.dispatched_at, height: @package.height, lenght: @package.lenght, receiver_agency_id: @package.receiver_agency_id, receiver_id: @package.receiver_id, sender_agency_id: @package.sender_agency_id, sender_id: @package.sender_id, status: @package.status, weight: @package.weight, width: @package.width }
    assert_redirected_to package_path(assigns(:package))
  end

  test "should destroy package" do
    assert_difference('Package.count', -1) do
      delete :destroy, id: @package
    end

    assert_redirected_to packages_path
  end
end
