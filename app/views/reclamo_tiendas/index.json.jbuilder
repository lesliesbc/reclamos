json.array!(@reclamo_tiendas) do |reclamo_tienda|
  json.extract! reclamo_tienda, :id, :recla_id, :tienda_id
  json.url reclamo_tienda_url(reclamo_tienda, format: :json)
end
