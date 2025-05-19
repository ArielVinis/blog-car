class Vehicle < ApplicationRecord
    before_save :set_save
    # Validations
    validates :brand, :model, :year, :kind, presence: true

    def set_save
        puts "Saving..."
    end
end
