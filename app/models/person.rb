class Person < ApplicationRecord
  belongs_to :team
  has_and_belongs_to_many :projects

  validates :name, presence: true
end
