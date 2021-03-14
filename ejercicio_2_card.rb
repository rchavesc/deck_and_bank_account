class Card
    attr_accessor :number, :suit

    def initialize(number, suit)
        #clausula de seguridad, para manejar excepciones, valid? es el nombre y los argumentos que nosotros creamos en el def
        raise ArgumentError, 'No puedo crear esa carta' unless valid?(number, suit)
        @number = number
        @suit = suit
    end   

    def valid?(number, suit)
        number <= 13 && ['C', 'E', 'D', 'T'].include?(suit)
    end
end