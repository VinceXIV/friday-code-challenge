class Power < ApplicationRecord
    has_many :hero_powers, dependent: :destroy
    has_many :heros, through: :hero_powers

    validates :description, length: {maximum: 10}
end
