class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :title
      t.text :description
      t.text :job_location
      t.text :job_date
      t.text :job_company
      t.text :contract_type
      t.text :logo_image
      t.text :salary

      t.timestamps
    end
  end
end
