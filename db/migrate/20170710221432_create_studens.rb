class CreateStudens < ActiveRecord::Migration[5.1]
  def change
    create_table :studens do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :bio
      t.string :link_in
      t.string :twitter
      t.string :personal_url
      t.string :resume_url
      t.string :github_url
      t.string :avatar


      t.timestamps
    end
  end
end
