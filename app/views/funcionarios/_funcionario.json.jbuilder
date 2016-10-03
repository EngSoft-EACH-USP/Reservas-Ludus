json.extract! funcionario, :id, :nome, :email, :funcao, :admin, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)