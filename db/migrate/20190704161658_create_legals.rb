class CreateLegals < ActiveRecord::Migration[6.0]
  def change
    create_table :legals do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
