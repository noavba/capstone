class AddingMoreColumnsToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :DOB, :date
    #first education - name, level (phd, etc), start date, end date, degree name, school & GPA
    add_column :inquiries, :education_one, :boolean
    add_column :inquiries, :education_one_level, :string
    add_column :inquiries, :education_one_start_date, :date
    add_column :inquiries, :education_one_end_date, :date
    add_column :inquiries, :education_one_degree_name, :string
    add_column :inquiries, :education_one_school_name, :string
    add_column :inquiries, :education_one_gpa, :decimal
    # second education name, level (phd, etc), start date, end date, degree name, school, gpa
    add_column :inquiries, :education_two, :boolean
    add_column :inquiries, :education_two_level, :string
    add_column :inquiries, :education_two_start_date, :date
    add_column :inquiries, :education_two_end_date, :date
    add_column :inquiries, :education_two_degree_name, :string
    add_column :inquiries, :education_two_school_name, :string
    add_column :inquiries, :education_two_gpa, :decimal
    #third education name. level (phd, etc), start date, end date, degree name, school, gpa
    add_column :inquiries, :education_three, :boolean
    add_column :inquiries, :education_three_level, :string
    add_column :inquiries, :education_three_start_date, :date
    add_column :inquiries, :education_three_end_date, :date
    add_column :inquiries, :education_three_degree_name, :string
    add_column :inquiries, :education_three_school_name, :string
    add_column :inquiries, :education_three_gpa, :decimal
  end
end
