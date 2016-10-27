json.extract! reserva, :id, :nome, :email, :telefone, :pessoas, :data, :hora, :pne, :obs, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)