json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :direccion, :comuna, :telefono, :correo
  json.url cliente_url(cliente, format: :json)
end
