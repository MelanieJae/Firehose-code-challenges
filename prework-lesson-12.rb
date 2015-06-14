class Card
	attr_accessor :rank, :suit

	
	def initialize(rank, suit)
		self.rank = rank
		self.suit = suit
	end	

	def output_card
		puts "#{self.rank} of #{self.suit}"
 	end

	def self.random_card
		Card.new(rand(13), rand(4))
	end
end


class Deck

	def initialize
		@cards = []
			(0..12).each do |rank|
				(0..3).each do |suit|
				@cards << Card.new(rank, suit)
			end
		end
	end

	def output_deck
		@cards.each do |card|
			card.output_card
		end
	end

	def shuffle
		@cards.shuffle!
	end

	def deal_card
		card = @cards.pop
		puts "\n#{card.rank} of #{card.suit}"
		return card
	end
end


deck = Deck.new
deck.shuffle
deck.output_deck
card = deck.deal_card



