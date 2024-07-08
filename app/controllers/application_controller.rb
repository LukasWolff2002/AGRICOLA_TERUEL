class ApplicationController < ActionController::Base
    before_action :set_logo

    private
  
    def set_logo
      @logo = Image.find_by(name: 'LOGO')
      
    rescue StandardError => e
      logger.error "Error al cargar el logo: #{e.message}"
      @logo = nil
      
    end
  end
  