require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :age_type => "MyString",
      :gender => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :user => nil,
      :nickname => "MyString",
      :relation => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"

      assert_select "input#contact_age_type[name=?]", "contact[age_type]"

      assert_select "input#contact_gender[name=?]", "contact[gender]"

      assert_select "input#contact_street_address[name=?]", "contact[street_address]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "input#contact_zip_code[name=?]", "contact[zip_code]"

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"

      assert_select "input#contact_nickname[name=?]", "contact[nickname]"

      assert_select "input#contact_relation[name=?]", "contact[relation]"
    end
  end
end
