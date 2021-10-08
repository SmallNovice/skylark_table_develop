class FormFieldsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_action

  def receive
    params["form"]["fields"].each do |field|
      if !FormField.find_by(fields_id: field["id"])
        forms = skylark_service.query_form(FormField.form_id)
        JSON.parse(forms)["fields"].each do |field_skylark|
          if field_skylark["id"] == field["id"]
            FormField.upsert(field_skylark)
          end
        end
      end
    end
  end

  private

  def set_action
    @response_action = request.request_parameters['action']
  end

  def skylark_service
    @skylark_service ||= SkylarkService.new
  end
end
