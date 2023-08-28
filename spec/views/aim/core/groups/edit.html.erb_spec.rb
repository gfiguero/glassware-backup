require 'rails_helper'

RSpec.describe('aim/core/groups/edit', type: :view) do
  let(:aim / core_group) do
    Aim::Core::Group.create!(
      name: 'MyString',
      kind: 'MyString',
    )
  end

  before(:each) do
    assign(:aim / core_group, aim / core_group)
  end

  it 'renders the edit aim/core_group form' do
    render

    assert_select 'form[action=?][method=?]', aim / core_group_path(aim / core_group), 'post' do
      assert_select 'input[name=?]', 'aim/core_group[name]'

      assert_select 'input[name=?]', 'aim/core_group[kind]'
    end
  end
end
