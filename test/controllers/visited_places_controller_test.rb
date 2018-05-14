require 'test_helper'

class VisitedPlacesControllerTest < ActionController::TestCase
  setup do
    @visited_place = visited_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visited_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visited_place" do
    assert_difference('VisitedPlace.count') do
      post :create, visited_place: { name: @visited_place.name, place_type: @visited_place.place_type, visited_at: @visited_place.visited_at }
    end

    assert_redirected_to visited_place_path(assigns(:visited_place))
  end

  test "should show visited_place" do
    get :show, id: @visited_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visited_place
    assert_response :success
  end

  test "should update visited_place" do
    patch :update, id: @visited_place, visited_place: { name: @visited_place.name, place_type: @visited_place.place_type, visited_at: @visited_place.visited_at }
    assert_redirected_to visited_place_path(assigns(:visited_place))
  end

  test "should destroy visited_place" do
    assert_difference('VisitedPlace.count', -1) do
      delete :destroy, id: @visited_place
    end

    assert_redirected_to visited_places_path
  end
end
