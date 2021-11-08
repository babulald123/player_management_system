# frozen_string_literal: true

require 'test_helper'

class ManagementsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get managements_index_url
    assert_response :success
  end

  test 'should get new' do
    get managements_new_url
    assert_response :success
  end

  test 'should get show' do
    get managements_show_url
    assert_response :success
  end

  test 'should get edit' do
    get managements_edit_url
    assert_response :success
  end
end
