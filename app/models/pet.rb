class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :sex, :photo, :breed, :pet_type, :address, presence: true

  after_create :set_default

  def set_default
    if self.sex == "male"
      self.on_heat = true
    else
      self.on_heat = false
    end
    self.save
  end
end
