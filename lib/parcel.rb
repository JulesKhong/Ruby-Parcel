class Parcel
  define_method(:initialize) do |width, height, length|
    @width = width
    @height = height
    @length = length
  end

  define_method(:volume) do
    volume = @length.*(@width).*(@height)
    volume
  end
end
