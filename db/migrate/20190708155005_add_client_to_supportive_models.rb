class AddClientToSupportiveModels < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :client, index: true, foreign_key: true
    add_reference :legals, :client, index: true, foreign_key: true
  end
end
