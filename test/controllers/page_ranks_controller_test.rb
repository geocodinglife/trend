require 'test_helper'

class PageRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_rank = page_ranks(:one)
  end

  test 'should get index' do
    get page_ranks_url
    assert_response :success
  end

  test 'should get new' do
    get new_page_rank_url
    assert_response :success
  end

  test 'should create page_rank' do
    assert_difference('PageRank.count') do
      post page_ranks_url, params: { page_rank: { link_id: @page_rank.link_id, rank: @page_rank.rank } }
    end

    assert_redirected_to page_rank_url(PageRank.last)
  end

  test 'should show page_rank' do
    get page_rank_url(@page_rank)
    assert_response :success
  end

  test 'should get edit' do
    get edit_page_rank_url(@page_rank)
    assert_response :success
  end

  test 'should update page_rank' do
    patch page_rank_url(@page_rank), params: { page_rank: { link_id: @page_rank.link_id, rank: @page_rank.rank } }
    assert_redirected_to page_rank_url(@page_rank)
  end

  test 'should destroy page_rank' do
    assert_difference('PageRank.count', -1) do
      delete page_rank_url(@page_rank)
    end

    assert_redirected_to page_ranks_url
  end
end
