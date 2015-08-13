require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]", root_path, count: 2 #replaces ? with correct path
  	assert_select "a[href=?]", help_path # the 2 ^^ looks for 2 references
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", contact_path
  end
end
