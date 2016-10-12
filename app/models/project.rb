class Project < ApplicationRecord
  has_and_belongs_to_many :people
  validates :name, :project_type, :location, :discipline, presence: true
  validates_associated :person_ids
end
