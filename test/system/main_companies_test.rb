require "application_system_test_case"

class MainCompaniesTest < ApplicationSystemTestCase
  setup do
    @main_company = main_companies(:one)
  end

  test "visiting the index" do
    visit main_companies_url
    assert_selector "h1", text: "Main Companies"
  end

  test "creating a Main company" do
    visit main_companies_url
    click_on "New Main Company"

    fill_in "Brand", with: @main_company.brand
    fill_in "Cnpj", with: @main_company.cnpj
    fill_in "Nome", with: @main_company.nome
    click_on "Create Main company"

    assert_text "Main company was successfully created"
    click_on "Back"
  end

  test "updating a Main company" do
    visit main_companies_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @main_company.brand
    fill_in "Cnpj", with: @main_company.cnpj
    fill_in "Nome", with: @main_company.nome
    click_on "Update Main company"

    assert_text "Main company was successfully updated"
    click_on "Back"
  end

  test "destroying a Main company" do
    visit main_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main company was successfully destroyed"
  end
end
