require 'test_helper'

class HolaControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get hola_inicio_url
    assert_response :success
  end

end
