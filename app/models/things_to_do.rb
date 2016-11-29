class ThingsToDo < ApplicationRecord
    has_and_belongs_to_many :users, :join_table => :users_things_to_dos
end
