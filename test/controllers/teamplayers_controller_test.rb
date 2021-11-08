# frozen_string_literal: true

require 'test_helper'

class TeamplayersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get teamplayers_index_url
    assert_response :success
  end

  test 'should get new' do
    get teamplayers_new_url
    assert_response :success
  end

  test 'should get show' do
    get teamplayers_show_url
    assert_response :success
  end

  test 'should get edit' do
    get teamplayers_edit_url
    assert_response :success
  end

  test 'should get search' do
    get teamplayers_search_url
    assert_response :success
  end
end
