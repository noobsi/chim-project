require 'test_helper'

class BirdImagesControllerTest < ActionController::TestCase
  setup do
    @bird_image = bird_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bird_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bird_image" do
    assert_difference('BirdImage.count') do
      post :create, bird_image: { bird: @bird_image.bird, image: @bird_image.image }
    end

    assert_redirected_to bird_image_path(assigns(:bird_image))
  end

  test "should show bird_image" do
    get :show, id: @bird_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bird_image
    assert_response :success
  end

  test "should update bird_image" do
    patch :update, id: @bird_image, bird_image: { bird: @bird_image.bird, image: @bird_image.image }
    assert_redirected_to bird_image_path(assigns(:bird_image))
  end

  test "should destroy bird_image" do
    assert_difference('BirdImage.count', -1) do
      delete :destroy, id: @bird_image
    end

    assert_redirected_to bird_images_path
  end
end
