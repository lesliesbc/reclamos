json.array!(@reclas) do |recla|
  json.extract! recla, :id, :tienda, :reclam, :cliente_id
  json.url recla_url(recla, format: :json)
end
