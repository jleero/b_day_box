require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Age Type/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Relation/)
  end
end
