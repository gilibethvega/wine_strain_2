
class MagazineOenologists < ApplicationRecord
    belongs_to :magazine
    belongs_to :oenologist
    accepts_nested_attributes_for :oenologist, update_only: true, allow_destroy: true
end