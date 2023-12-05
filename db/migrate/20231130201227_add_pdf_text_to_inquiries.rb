class AddPdfTextToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :pdf_text, :text
  end
end
