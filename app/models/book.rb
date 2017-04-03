class Book < ApplicationRecord

  mount_uploader :bookimage, BookimageUploader



  validates :title, presence: true
  validates :contents, presence: true
  validates :image, presence: true
  validates :bookimage, presence: true



end
