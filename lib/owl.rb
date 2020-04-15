class Owl
  def initialize
    @picture = []
    @picture.push('https://www.allaboutbirds.org/guide/assets/photo/32804161-1280px.jpg')
    @picture.push('https://www.allaboutbirds.org/guide/assets/photo/37182071-1280px.jpg')
    @picture.push('https://www.allaboutbirds.org/guide/assets/photo/63737991-1280px.jpg')
    @picture.push('https://www.allaboutbirds.org/guide/assets/photo/63738041-1280px.jpg')
    @picture.push('https://www.wildlifeaid.org.uk/wp-content/uploads/2019/11/BarnOwl-600x400.jpg')
    @picture.push('https://www.njhiking.com/wp-content/uploads/2018/12/snowy-owl-ibsp-12-26-18-AC0Z3841-570x380.jpg')
    @picture.push('https://images.immediate.co.uk/production/volatile/sites/23/2013/03/GettyImages-910171646-c4c0a1b.jpg')

    @fact = []
    @fact.push('Did you know there are around 200 different owl species')
    @fact.push('Did you know many owl species have asymmetrical ears')
    @fact.push('Did you know owls can rotate their necks 270 degrees')
    @fact.push('Owls hunt other owls. Great Horned Owls are the top predator of the smaller Barred Owl')
    @fact.push('A group of owls is called a parliament. This originates from C.S. Lewis’ The Chronicles of Narnia')
    @fact.push('The eyes of an owl are not true “eyeballs.” Their tube-shaped eyes are completely immobile')
    @fact.push('Owls are zygodactyl, which means their feet have two forward-facing toes and two backward-facing toes')
  end

  def fact
    @fact[rand(7)]
  end

  def picture
    @picture[rand(7)]
  end
end
