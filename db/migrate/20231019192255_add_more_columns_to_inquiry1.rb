class AddMoreColumnsToInquiry1 < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :english_test_answer, :text
    
  end
end
