class Event < ApplicationRecord
    include ActiveModel::Validations
    validates :name, :month, :day, :year, :presence => {:message => "Required"}
    
end
