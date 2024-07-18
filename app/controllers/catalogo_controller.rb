class CatalogoController < ApplicationController

    def index
 
    end

    def tomate_granel
        @variedad_1 = Image.find_by(name: 'VARIEDAD_1')
 
    end

    def tomate_racimo
       
        @variedad_2 = Image.find_by(name: 'VARIEDAD_2')

    end

    def tomate_beef
      
        @variedad_3 = Image.find_by(name: 'VARIEDAD_3')

    end

    def tomate_cherry
       
    end

    def tomate_saladete
      
    end

end