class Strain < ApplicationRecord
    has_many :wine_strains, inverse_of: :strain, class_name:'WineStrains'
    has_many :wines, inverse_of: :strain, class_name:'Wine', through: :wine_strains, dependent: :destroy
    validates :name, uniqueness: { case_sensitive: false }
    validates :name, presence: true
end
