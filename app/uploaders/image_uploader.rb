# frozen_string_literal: true

class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.production?
    include Cloudinary::CarrierWave

    CarrierWave.configure do |config|
      config.cache_storage = :file
    end
  else
    include CarrierWave::MiniMagick

    storage :file

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end

  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fit: [250, 250]
  end

  def size_range
    1..5.megabytes
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  def public_id
    model.id
  end
end
