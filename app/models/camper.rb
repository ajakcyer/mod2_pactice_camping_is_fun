class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, :age, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 7, less_than: 19}
end
