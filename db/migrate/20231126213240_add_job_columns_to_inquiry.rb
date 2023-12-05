class AddJobColumnsToInquiry < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :interests, :string
    add_column :inquiries, :job_experience, :string
    add_column :inquiries, :job_experience_one_start_date, :date
    add_column :inquiries, :job_experience_one_end_date, :date
    add_column :inquiries, :job_role, :string
    add_column :inquiries, :job_description, :string
  end
end
