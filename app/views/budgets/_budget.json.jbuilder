json.extract! budget, :id, :nombre, :descripcion, :valor, :created_at, :updated_at
json.url budget_url(budget, format: :json)
