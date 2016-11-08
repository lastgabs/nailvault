require 'test_helper'

class NailPolishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nail_polish = nail_polishes(:one)
  end

  test "should get index" do
    get nail_polishes_url
    assert_response :success
  end

  test "should get new" do
    get new_nail_polish_url
    assert_response :success
  end

  test "should create nail_polish" do
    assert_difference('NailPolish.count') do
      post nail_polishes_url, params: { nail_polish: { brand_id: @nail_polish.brand_id, collection_id: @nail_polish.collection_id, color: @nail_polish.color, name: @nail_polish.name, size: @nail_polish.size } }
    end

    assert_redirected_to nail_polish_url(NailPolish.last)
  end

  test "should show nail_polish" do
    get nail_polish_url(@nail_polish)
    assert_response :success
  end

  test "should get edit" do
    get edit_nail_polish_url(@nail_polish)
    assert_response :success
  end

  test "should update nail_polish" do
    patch nail_polish_url(@nail_polish), params: { nail_polish: { brand_id: @nail_polish.brand_id, collection_id: @nail_polish.collection_id, color: @nail_polish.color, name: @nail_polish.name, size: @nail_polish.size } }
    assert_redirected_to nail_polish_url(@nail_polish)
  end

  test "should destroy nail_polish" do
    assert_difference('NailPolish.count', -1) do
      delete nail_polish_url(@nail_polish)
    end

    assert_redirected_to nail_polishes_url
  end
end
