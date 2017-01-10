class Project < ApplicationRecord
  validates :name, :description, presence: true

  has_many :pins, dependent: :destroy

end
