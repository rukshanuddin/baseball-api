class Player < ApplicationRecord
  belongs_to :team
  # has_many_attached :image_files, :video_files
end
