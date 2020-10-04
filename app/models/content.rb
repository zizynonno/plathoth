class Content < ApplicationRecord
  belongs_to :user
  mount_uploader :media, MediaUploader
  default_scope -> { order(created_at: :desc) }
end
