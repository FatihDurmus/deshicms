class Video < ActiveRecord::Base
  mount_uploader :file, FileUploader
end