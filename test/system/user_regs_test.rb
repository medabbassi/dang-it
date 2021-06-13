require "application_system_test_case"

class UserRegsTest < ApplicationSystemTestCase
  setup do
    @user_reg = user_regs(:one)
  end

  test "visiting the index" do
    visit user_regs_url
    assert_selector "h1", text: "User Regs"
  end

  test "creating a User reg" do
    visit user_regs_url
    click_on "New User Reg"

    fill_in "Email", with: @user_reg.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @user_reg.username
    click_on "Create User reg"

    assert_text "User reg was successfully created"
    click_on "Back"
  end

  test "updating a User reg" do
    visit user_regs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_reg.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @user_reg.username
    click_on "Update User reg"

    assert_text "User reg was successfully updated"
    click_on "Back"
  end

  test "destroying a User reg" do
    visit user_regs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User reg was successfully destroyed"
  end
end
