Rails.application.routes.draw do
  post  '/receive',  to: 'form_fields#receive'
end
