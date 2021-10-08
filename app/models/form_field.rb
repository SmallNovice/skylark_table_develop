class FormField < ApplicationRecord
  def self.upsert(params)
    response_attributes = {
      fields_id: params['id'],
      fields_identity_key: params['identity_key'],
      fields_type: params['type'],
      title: params['title']
    }
    FormField.create(response_attributes)
  end

  private

  def self.form_id
    form_id = 13050
  end
end
