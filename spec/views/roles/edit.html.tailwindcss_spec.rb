require 'rails_helper'

RSpec.describe "roles/edit", type: :view do
  let(:role) {
    Role.create!(
      name: "MyString",
      usage: "MyString",
      profiles: nil
    )
  }

  before(:each) do
    assign(:role, role)
  end

  it "renders the edit role form" do
    render

    assert_select "form[action=?][method=?]", role_path(role), "post" do

      assert_select "input[name=?]", "role[name]"

      assert_select "input[name=?]", "role[usage]"

      assert_select "input[name=?]", "role[profiles_id]"
    end
  end
end
