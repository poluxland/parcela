json.extract! gasto, :id, :fecha, :descripcion, :monto, :comentarios, :estado, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
