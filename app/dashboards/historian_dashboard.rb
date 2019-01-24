require "administrate/base_dashboard"

class HistorianDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    historian_id: Field::Number,
    name: Field::String,
    date_born: Field::String,
    place_born: Field::String,
    date_died: Field::String,
    place_died: Field::String,
    overview: Field::String,
    home_country: Field::String,
    sources: Field::String,
    bibliography: Field::String,
    other_names: Field::String,
    notes: Field::String,
    gender: Field::String,
    subject_area: Field::String,
    path: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :historian_id,
    :name,
    :date_born,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :historian_id,
    :name,
    :date_born,
    :place_born,
    :date_died,
    :place_died,
    :overview,
    :home_country,
    :sources,
    :bibliography,
    :other_names,
    :notes,
    :gender,
    :subject_area,
    :path,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :historian_id,
    :name,
    :date_born,
    :place_born,
    :date_died,
    :place_died,
    :overview,
    :home_country,
    :sources,
    :bibliography,
    :other_names,
    :notes,
    :gender,
    :subject_area,
    :path,
  ].freeze

  # Overwrite this method to customize how historians are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(historian)
  #   "Historian ##{historian.id}"
  # end
end
