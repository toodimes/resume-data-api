class ChangeEducationAttr < ActiveRecord::Migration[5.1]
  def change
    remove_column :educations, :job_title, :string
    remove_column :educations, :company, :string
    add_column :educations, :degree, :string
    add_column :educations, :university_name, :string
  end
end
