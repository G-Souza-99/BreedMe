class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :sex, :photo, :breed, :pet_type, presence: true
  validates :pedigree_number, uniqueness: true

  after_initialize :set_default

  def set_default
    if self.sex == "male"
      self.on_heat = true
    else
      self.on_heat = false
    end
  end
end
