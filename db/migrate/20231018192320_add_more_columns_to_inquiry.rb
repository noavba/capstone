class AddMoreColumnsToInquiry < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :has_English_Test, :boolean
    add_column :inquiries, :missionStatement, :text
  end
end
