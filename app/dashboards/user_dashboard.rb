require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    textbooks: Field::HasMany,
  }

  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :created_at,
    :updated_at,
    :textbooks,
  ]

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :created_at,
    :updated_at,
    :textbooks,
  ]

  FORM_ATTRIBUTES = [
    :email,
    :textbooks,
  ]
end