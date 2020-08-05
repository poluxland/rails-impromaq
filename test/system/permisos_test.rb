require "application_system_test_case"

class PermisosTest < ApplicationSystemTestCase
  setup do
    @permiso = permisos(:one)
  end

  test "visiting the index" do
    visit permisos_url
    assert_selector "h1", text: "Permisos"
  end

  test "creating a Permiso" do
    visit permisos_url
    click_on "New Permiso"

    fill_in "Cantidad", with: @permiso.cantidad
    fill_in "Desde", with: @permiso.desde
    fill_in "Hasta", with: @permiso.hasta
    fill_in "Otros", with: @permiso.otros
    fill_in "Periodo", with: @permiso.periodo
    fill_in "Personal", with: @permiso.personal_id
    click_on "Create Permiso"

    assert_text "Permiso was successfully created"
    click_on "Back"
  end

  test "updating a Permiso" do
    visit permisos_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @permiso.cantidad
    fill_in "Desde", with: @permiso.desde
    fill_in "Hasta", with: @permiso.hasta
    fill_in "Otros", with: @permiso.otros
    fill_in "Periodo", with: @permiso.periodo
    fill_in "Personal", with: @permiso.personal_id
    click_on "Update Permiso"

    assert_text "Permiso was successfully updated"
    click_on "Back"
  end

  test "destroying a Permiso" do
    visit permisos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Permiso was successfully destroyed"
  end
end
