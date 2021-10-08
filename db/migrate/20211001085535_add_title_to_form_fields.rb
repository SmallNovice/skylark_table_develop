class AddTitleToFormFields < ActiveRecord::Migration[6.1]
  def change
    add_column :form_fields, :title, :string
  end
end
