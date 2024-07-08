class ImagesController < ApplicationController
  before_action :set_image, only: %i[ destroy edit] 

  def index
    @images = Image.order(:name)
  end

  def edit
		@image = Image.find(params[:id])
	end

	def update
		@image = Image.find(params[:id])
		if @image.update image_params_2
				redirect_to images_url
		else
				render :edit
		end
	end

  def new
    @image = Image.new
  end

  def destroy
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url, notice: "Image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def create
    # Este método se llama cuando deseas crear una nueva imagen adjunta
    @image = Image.new(image_params)

    if @image.save
      redirect_to images_url, notice: 'Imagen creada exitosamente.'
    else
      flash.now[:alert] = 'Hubo un error al crear la imagen.'
      render :new
    end
  end

  

  private

  def image_params
    params.require(:image).permit(:name, :archivo)  # Asegúrate de permitir el parámetro del archivo adjunto
  end

  def image_params_2
    params.require(:image).permit(:name)  # Asegúrate de que :name esté permitido
  end

  def set_image
    @image = Image.find(params[:id])
  end
end