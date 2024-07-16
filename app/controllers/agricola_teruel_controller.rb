class AgricolaTeruelController < ApplicationController
    def home
        @portada = Image.find_by(name: 'MANOS_TOMATES')
        @red_1 = Image.find_by(name: 'RED_1')
        @red_2 = Image.find_by(name: 'RED_2')
        @red_3 = Image.find_by(name: 'RED_3')
        @red_4 = Image.find_by(name: 'RED_4')
        @variedad_1 = Image.find_by(name: 'VARIEDAD_1')
        @variedad_2 = Image.find_by(name: 'VARIEDAD_2')
        @variedad_3 = Image.find_by(name: 'VARIEDAD_3')
        @variedad_4 = Image.find_by(name: 'VARIEDAD_4')
        @slides_1 = Image.find_by(name: 'SLIDES_1')
        @slides_2 = Image.find_by(name: 'SLIDES_2')

        @comment = Comment.new
        
    end

    def us
        @portada = Image.find_by(name: 'PORTADA_US')
        @slides_1 = Image.find_by(name: 'SLIDES_1_US')
        @bandeja_1 = Image.find_by(name: 'BANDEJA_1_US')
        @diego = Image.find_by(name: 'DIEGO_US')
        @javier = Image.find_by(name: 'JAVIER_US')
    end

    def beneficios_tomate
        @comment = Comment.new
    end

end