require "administrate/base_dashboard"

class JobDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    users: Field::HasMany,
    id: Field::Number,
    title: Field::Text,
    description: Field::Text,
    job_location: Field::Text,
    job_date: Field::Text,
    job_company: Field::Text,
    contract_type: Field::Text,
    logo_image: Field::Text,
    salary: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :users,
    :id,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :users,
    :id,
    :title,
    :description,
    :job_location,
    :job_date,
    :job_company,
    :contract_type,
    :logo_image,
    :salary,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :users,
    :title,
    :description,
    :job_location,
    :job_date,
    :job_company,
    :contract_type,
    :logo_image,
    :salary,
  ].freeze

  # Overwrite this method to customize how jobs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(job)
  #   "Job ##{job.id}"
  # end
end
