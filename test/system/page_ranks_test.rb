require "application_system_test_case"

class PageRanksTest < ApplicationSystemTestCase
  setup do
    @page_rank = page_ranks(:one)
  end

  test "visiting the index" do
    visit page_ranks_url
    assert_selector "h1", text: "Page Ranks"
  end

  test "creating a Page rank" do
    visit page_ranks_url
    click_on "New Page Rank"

    fill_in "Link", with: @page_rank.link_id
    fill_in "Rank", with: @page_rank.rank
    click_on "Create Page rank"

    assert_text "Page rank was successfully created"
    click_on "Back"
  end

  test "updating a Page rank" do
    visit page_ranks_url
    click_on "Edit", match: :first

    fill_in "Link", with: @page_rank.link_id
    fill_in "Rank", with: @page_rank.rank
    click_on "Update Page rank"

    assert_text "Page rank was successfully updated"
    click_on "Back"
  end

  test "destroying a Page rank" do
    visit page_ranks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page rank was successfully destroyed"
  end
end
