class Book < ApplicationRecord

  mount_uploader :bookimage, BookimageUploader

  default_scope -> { order(created_at: :desc) }



  validates :title, presence: true
  validates :contents, presence: true
  validates :image, presence: true, allow_nil: true

  validates :bookimage, presence: true



end
