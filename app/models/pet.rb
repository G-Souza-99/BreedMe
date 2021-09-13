class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :sex, :photo, :breed, :pet_type, presence: true

  after_create :set_default

  def set_default
    if self.sex == "male"
      self.on_heat = true
    else
      self.on_heat = false
    end
  end
end
