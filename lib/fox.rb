class Fox
  def initialize
    @url_picture = 'https://randomfox.ca/floof/?ref=apilist.fun'
    @fact = []
    @fact.push('Foxes usually live in forested areas, though they are also found in mountains, grasslands and deserts')
    @fact.push('Most foxes are around the medium-sized dogs. they are also quite light')
    @fact.push('These animals are very social and live flexible lives. They are found all over the world')
    @fact.push('Foxes are omnivorous mammals that are light on their feet')
    @fact.push('The familiar fox that is most common in legend and lore is the red fox, but there are over 30 species')
    @fact.push('In general, foxes are small members of the dog family')
    @fact.push('Foxes weere introduced by humans to Australia, where they are considered a major pest')
  end

  def fact
    @fact[rand(7)]
  end

  def picture
    response = HTTP.get(@url_picture)
    JSON.parse(response.to_s)['image']
  end
end
