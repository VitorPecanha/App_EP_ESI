class Video < ApplicationRecord
  belongs_to :user_session
  #has_and_belongs_to_many :user_sessions
end
