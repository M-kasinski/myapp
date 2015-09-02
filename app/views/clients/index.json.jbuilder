json.array!(@clients) do |client|
  json.extract! client, :id, :nom, :prenom, :tel, :ville, :cp
  json.url client_url(client, format: :json)
end
