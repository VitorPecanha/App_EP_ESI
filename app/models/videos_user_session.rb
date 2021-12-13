class VideoUserSession < ApplicationRecord
  belongs_to :user_session
  belongs_to :video
end
