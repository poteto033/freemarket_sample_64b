class Image < ApplicationRecord
  belongs_to :item
<<<<<<< HEAD

  mount_uploader :url, ImageUploader
=======
  mount_uploaders :url, ImageUploader

>>>>>>> master
end
