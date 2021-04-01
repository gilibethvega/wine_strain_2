class Magazine < ApplicationRecord
    has_many :magazine_oenologists, class_name:'MagazineOenologists', dependent: :destroy
    has_many :oenologists, class_name:'Oenologist', through: :magazine_oenologists, dependent: :destroy
    has_many :roles
end
