class Event < ApplicationRecord
    include ActiveModel::Validations
    validates :name, :month, :day, :year, presence: true
    has_and_belongs_to_many :users, :join_table => :users_events
end
