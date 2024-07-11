class CatalogoController < ApplicationController

    def index
        @catalogo_logo = Image.find_by(name: 'CATALOGO_LOGO')
        @variedad_1 = Image.find_by(name: 'VARIEDAD_1')
        @variedad_2 = Image.find_by(name: 'VARIEDAD_2')
        @variedad_3 = Image.find_by(name: 'VARIEDAD_3')
        @variedad_4 = Image.find_by(name: 'VARIEDAD_4')
        @variedad_5 = Image.find_by(name: 'VARIEDAD_5')
    end

    def tomate_granel
        @catalogo = Image.find_by(name: 'CATALOGO')
        @variedad_1 = Image.find_by(name: 'VARIEDAD_1')
        @bandeja_1 = Image.find_by(name: 'BANDEJA_1_US')
    end

    def tomate_racimo
        @catalogo = Image.find_by(name: 'CATALOGO')
        @variedad_2 = Image.find_by(name: 'VARIEDAD_2')
        @bandeja_1 = Image.find_by(name: 'BANDEJA_1_US')
    end

    def tomate_beef
        @catalogo = Image.find_by(name: 'CATALOGO')
        @variedad_3 = Image.find_by(name: 'VARIEDAD_3')
        @bandeja_1 = Image.find_by(name: 'BANDEJA_1_US')
    end

    def tomate_cherry
        @catalogo = Image.find_by(name: 'CATALOGO')
    end

end