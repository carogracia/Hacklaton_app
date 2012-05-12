require 'test_helper'

class PoliciesControllerTest < ActionController::TestCase
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post :create, policy: { age_range: @policy.age_range, auto_id: @policy.auto_id, city: @policy.city, company_id: @policy.company_id, gender: @policy.gender, marital_status: @policy.marital_status, occupation: @policy.occupation, price: @policy.price }
    end

    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should show policy" do
    get :show, id: @policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy
    assert_response :success
  end

  test "should update policy" do
    put :update, id: @policy, policy: { age_range: @policy.age_range, auto_id: @policy.auto_id, city: @policy.city, company_id: @policy.company_id, gender: @policy.gender, marital_status: @policy.marital_status, occupation: @policy.occupation, price: @policy.price }
    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete :destroy, id: @policy
    end

    assert_redirected_to policies_path
  end
end
