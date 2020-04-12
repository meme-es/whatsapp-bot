module Dog
  def self.fact
    response = HTTP.get('https://dog-api.kinduff.com/api/facts')
    JSON.parse(response.to_s)['facts'].first
  end

  def self.picture
    response = HTTP.get('https://dog.ceo/api/breeds/image/random')
    JSON.parse(response.to_s)['message']
  end
end

module Cat
  def self.fact
    response = HTTP.get('https://catfact.ninja/fact')
    JSON.parse(response.to_s)['fact']
  end

  def self.picture
    response = HTTP.get('https://api.thecatapi.com/v1/images/search')
    JSON.parse(response.to_s).first['url']
  end
end
