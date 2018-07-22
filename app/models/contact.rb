class Contact < ApplicationRecord
    mount_uploader :image, ContactImageUploader
end
