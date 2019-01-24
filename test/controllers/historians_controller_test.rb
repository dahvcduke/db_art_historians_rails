require 'test_helper'

class HistoriansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historian = historians(:one)
  end

  test "should get index" do
    get historians_url
    assert_response :success
  end

  test "should get new" do
    get new_historian_url
    assert_response :success
  end

  test "should create historian" do
    assert_difference('Historian.count') do
      post historians_url, params: { historian: { bibliography: @historian.bibliography, date_born: @historian.date_born, date_died: @historian.date_died, gender: @historian.gender, historian_id: @historian.historian_id, home_country: @historian.home_country, name: @historian.name, notes: @historian.notes, other_names: @historian.other_names, overview: @historian.overview, path: @historian.path, place_born: @historian.place_born, place_died: @historian.place_died, sources: @historian.sources, subject_area: @historian.subject_area } }
    end

    assert_redirected_to historian_url(Historian.last)
  end

  test "should show historian" do
    get historian_url(@historian)
    assert_response :success
  end

  test "should get edit" do
    get edit_historian_url(@historian)
    assert_response :success
  end

  test "should update historian" do
    patch historian_url(@historian), params: { historian: { bibliography: @historian.bibliography, date_born: @historian.date_born, date_died: @historian.date_died, gender: @historian.gender, historian_id: @historian.historian_id, home_country: @historian.home_country, name: @historian.name, notes: @historian.notes, other_names: @historian.other_names, overview: @historian.overview, path: @historian.path, place_born: @historian.place_born, place_died: @historian.place_died, sources: @historian.sources, subject_area: @historian.subject_area } }
    assert_redirected_to historian_url(@historian)
  end

  test "should destroy historian" do
    assert_difference('Historian.count', -1) do
      delete historian_url(@historian)
    end

    assert_redirected_to historians_url
  end
end
