class RemoveColumnsFromInquiry < ActiveRecord::Migration[7.0]
  def change
    remove_column :inquiries, :has_English_Test, :boolean
    remove_column :inquiries, :english_test_answer, :text
  end
end
