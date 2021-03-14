require_relative 'ejercicio_2_card'

class Deck
    attr_accessor :cards

    def initialize
        generate_cards 
    end

    def generate_cards
        @cards = []
        1.upto(13) do |number|
            ['C', 'E', 'D', 'T'].each do |suit|
                @cards.push(Card.new(number, suit))
            end
        end
    end

    def shuffle_deck
        @cards.shuffle!
    end

    def shift 
        @cards.shift
    end

    def handout (n = 5)
        random_cards = []
        n.times do
            random_cards.push(shift)#este (shift) nos quita las cartas del deck
        end
        return random_cards
    end
end