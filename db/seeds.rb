# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb
require 'google/apis/drive_v3'

# Define el ID de la carpeta en Google Drive donde están las fotos
folder_id = 'your_google_drive_folder_id'

# Lista todos los archivos en la carpeta
files = DRIVE_SERVICE.list_files(q: "'#{folder_id}' in parents", fields: 'files(id, name)')

# Itera sobre los archivos y descarga las fotos
files.each do |file|
  file_name = file.name
  file_id = file.id

  # Descarga el archivo desde Google Drive
  file_content = DRIVE_SERVICE.get_file(file_id, download_dest: "path/to/save/#{file_name}")

  # Crea un registro en tu modelo de Image con el nombre y la ruta del archivo descargado
  Image.create(name: file_name, image_file_name: file_content.download_dest)
end
