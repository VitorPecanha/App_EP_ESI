class PlantsUserSession < ApplicationRecord
  belongs_to :user_session
  belongs_to :plant
end
