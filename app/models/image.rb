class Image < ApplicationRecord
    mount_uploader :archivo, ArchivoUploader  # Ajusta el nombre del uploader según lo que hayas generado
  end