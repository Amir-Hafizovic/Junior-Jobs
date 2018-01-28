require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    notes: Field::HasMany,
    jobs: Field::HasMany,
    favourites: Field::HasMany,
    id: Field::Number,
    name: Field::Text,
    email: Field::Text,
    password_digest: Field::Text,
    employer_title: Field::Text,
    junior_title: Field::Text,
    user_type: Field::String.with_options(searchable: false),
    image: Field::Text,
    bio: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    company: Field::Text,
    is_admin: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :notes,
    :jobs,
    :favourites,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :notes,
    :jobs,
    :favourites,
    :id,
    :name,
    :email,
    :password_digest,
    :employer_title,
    :junior_title,
    :user_type,
    :image,
    :bio,
    :created_at,
    :updated_at,
    :company,
    :is_admin,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :notes,
    :jobs,
    :favourites,
    :name,
    :email,
    :password_digest,
    :employer_title,
    :junior_title,
    :user_type,
    :image,
    :bio,
    :company,
    :is_admin,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
