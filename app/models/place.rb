class Place < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  validates :description, presence: true
  validates :title, presence: true

end
