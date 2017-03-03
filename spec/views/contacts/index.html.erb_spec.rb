require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :age_type => "Age Type",
        :gender => "Gender",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :user => nil,
        :nickname => "Nickname",
        :relation => "Relation"
      ),
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :age_type => "Age Type",
        :gender => "Gender",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :user => nil,
        :nickname => "Nickname",
        :relation => "Relation"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age Type".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Relation".to_s, :count => 2
  end
end
