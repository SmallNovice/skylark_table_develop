class CreateFormField < ActiveRecord::Migration[6.1]
  def change
    create_table :form_fields do |t|
      t.integer :fields_id
      t.string :fields_identity_key
      t.string :fields_type

      t.timestamps
    end
  end
end
