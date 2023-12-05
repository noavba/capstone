class AddUserIdToInquiries < ActiveRecord::Migration[7.0]
  def change
    remove_column :inquiries, :user_id
    add_column :inquiries, :user_id, :bigint
    add_foreign_key :inquiries, :users
  end
end
