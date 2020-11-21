require 'test_helper'

class MainCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_company = main_companies(:one)
  end

  test "should get index" do
    get main_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_main_company_url
    assert_response :success
  end

  test "should create main_company" do
    assert_difference('MainCompany.count') do
      post main_companies_url, params: { main_company: { brand: @main_company.brand, cnpj: @main_company.cnpj, nome: @main_company.nome } }
    end

    assert_redirected_to main_company_url(MainCompany.last)
  end

  test "should show main_company" do
    get main_company_url(@main_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_company_url(@main_company)
    assert_response :success
  end

  test "should update main_company" do
    patch main_company_url(@main_company), params: { main_company: { brand: @main_company.brand, cnpj: @main_company.cnpj, nome: @main_company.nome } }
    assert_redirected_to main_company_url(@main_company)
  end

  test "should destroy main_company" do
    assert_difference('MainCompany.count', -1) do
      delete main_company_url(@main_company)
    end

    assert_redirected_to main_companies_url
  end
end
