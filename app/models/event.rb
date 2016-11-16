# <<<<<<< HEAD
class Event < ApplicationRecord
    include ActiveModel::Validations
    validates :name, :month, :day, :year, :presence => {:message => "Required"}
    belongs_to :user
# =======
# # == Schema Information
# #
# # Table name: events
# #
# #  id         :integer          not null, primary key
# #  name       :string
# #  date       :datetime
# #  created_at :datetime         not null
# #  updated_at :datetime         not null
# #
#
# class Event < ApplicationRecord
# >>>>>>> 2546266e8a0dd7a12307fc1d7129e7ff6fee10f5
end
