class Parcel
  define_method(:initialize) do |width, height, length, weight, distance, speed|
    @width = width.to_f()
    @height = height.to_f()
    @length = length.to_f()
    @weight = weight.to_f()
    @distance = distance.to_f()
    @speed = speed.to_f()
  end

  define_method(:volume) do
    volume = @length.*(@width).*(@height)
    volume.round(2)
  end

  define_method(:cost_to_ship) do
    price = 10.00
    if self.volume() > 144
      price = price.+(((self.volume()).-(144)).*(0.10))
    end
    if @weight > 2
      price = price.+(@weight-2)
    end
    if @distance > 500
      price = price.+((@distance.-(500)).*(0.01))
    end
    price.round(2)
  end
end
