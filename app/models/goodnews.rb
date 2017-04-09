class Goodnews < ApplicationRecord

  mount_uploader :linkimage, BookimageUploader

  default_scope -> { order(created_at: :desc) }


end
