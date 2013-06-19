require 'test_helper'

class GreContentsControllerTest < ActionController::TestCase
  setup do
    @gre_content = gre_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gre_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gre_content" do
    assert_difference('GreContent.count') do
      post :create, gre_content: { meaning: @gre_content.meaning, usage1: @gre_content.usage1, usage2: @gre_content.usage2, word: @gre_content.word }
    end

    assert_redirected_to gre_content_path(assigns(:gre_content))
  end

  test "should show gre_content" do
    get :show, id: @gre_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gre_content
    assert_response :success
  end

  test "should update gre_content" do
    put :update, id: @gre_content, gre_content: { meaning: @gre_content.meaning, usage1: @gre_content.usage1, usage2: @gre_content.usage2, word: @gre_content.word }
    assert_redirected_to gre_content_path(assigns(:gre_content))
  end

  test "should destroy gre_content" do
    assert_difference('GreContent.count', -1) do
      delete :destroy, id: @gre_content
    end

    assert_redirected_to gre_contents_path
  end
end
