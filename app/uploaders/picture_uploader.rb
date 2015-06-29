# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  version :thumb do
    process :resize_to_limit => [150, 200]
  end

  version :avatar do 
    process :resize_to_fill => [200, 300]
  end

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
