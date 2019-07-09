class AddClientReferenceToAdmission < ActiveRecord::Migration[6.0]
  def change
    add_reference :admissions, :client, foreign_key: true
  end
end
