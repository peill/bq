class Scraper

	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/e/eminem.html')

		doc = Nokogiri::HTML(response.body)
		quotes = []
		doc.css('.bqQuoteLink a').each do |quote|
			quotes << quote.content
		end
		quotes.sample
	end
end