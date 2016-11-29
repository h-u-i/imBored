# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  month       :string
#  day         :integer
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
    include ActiveModel::Validations
    validates :name, :month, :day, :year, presence: true
    has_and_belongs_to_many :users, :join_table => :users_events
end
