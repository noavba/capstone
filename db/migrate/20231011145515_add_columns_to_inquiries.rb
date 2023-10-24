class AddColumnsToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :is_Canadian, :boolean
    add_column :inquiries, :mname, :string
    add_column :inquiries, :aboutMe, :text
  end
end
