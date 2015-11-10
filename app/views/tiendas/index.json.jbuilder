json.array!(@tiendas) do |tienda|
  json.extract! tienda, :id, :nombre, :ubicacion
  json.url tienda_url(tienda, format: :json)
end
