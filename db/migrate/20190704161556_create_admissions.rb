class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
      t.integer :admit_id
      t.string :admit_type

      t.timestamps
    end
  end
end
