require "application_system_test_case"

class PdrsTest < ApplicationSystemTestCase
  setup do
    @pdr = pdrs(:one)
  end

  test "visiting the index" do
    visit pdrs_url
    assert_selector "h1", text: "Pdrs"
  end

  test "should create pdr" do
    visit pdrs_url
    click_on "New pdr"

    fill_in "Answer", with: @pdr.answer
    fill_in "My zone", with: @pdr.my_zone
    click_on "Create Pdr"

    assert_text "Pdr was successfully created"
    click_on "Back"
  end

  test "should update Pdr" do
    visit pdr_url(@pdr)
    click_on "Edit this pdr", match: :first

    fill_in "Answer", with: @pdr.answer
    fill_in "My zone", with: @pdr.my_zone
    click_on "Update Pdr"

    assert_text "Pdr was successfully updated"
    click_on "Back"
  end

  test "should destroy Pdr" do
    visit pdr_url(@pdr)
    click_on "Destroy this pdr", match: :first

    assert_text "Pdr was successfully destroyed"
  end
end
