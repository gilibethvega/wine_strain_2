class WineStrains < ApplicationRecord
  belongs_to :wine
  belongs_to :strain
  accepts_nested_attributes_for :strain, allow_destroy: true
  scope :order_by_strain_name, -> { joins(:strain).order('strains.name') }
end