class AddEvenMoreColumnsToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :written_english_test, :text
  end
end
