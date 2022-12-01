class PowerHeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :hero_powers
end
