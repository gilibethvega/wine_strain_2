class Wine < ApplicationRecord
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists, dependent: :destroy
    has_many :wine_strains, inverse_of: :wine, class_name:'WineStrains'
    has_many :strains, inverse_of: :wine, class_name:'Strain', through: :wine_strains, dependent: :destroy
    accepts_nested_attributes_for :wine_strains, allow_destroy: true
    accepts_nested_attributes_for :strains, allow_destroy: true
    accepts_nested_attributes_for :wine_oenologists, allow_destroy: true
    accepts_nested_attributes_for :oenologists, allow_destroy: true
    validates :name, presence: true
    validates_associated :wine_strains
end
