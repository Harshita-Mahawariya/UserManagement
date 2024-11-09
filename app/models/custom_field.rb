class CustomField < ApplicationRecord
  belongs_to :user
  FIELD_TYPES = ['text_field', 'number_field', 'date_field']
end
