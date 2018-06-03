require "test_helper"

describe BoardsController do
  it "should get index" do
    get boards_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get boards_show_url
    value(response).must_be :success?
  end

  it "should get update" do
    get boards_update_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get boards_destroy_url
    value(response).must_be :success?
  end

  it "should get create" do
    get boards_create_url
    value(response).must_be :success?
  end

end
