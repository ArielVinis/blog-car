class Client < ApplicationRecord
    before_save :set_save
    validates :name, :age, presence: true

    private

    def set_save
        puts "Saving..."
    end
end
