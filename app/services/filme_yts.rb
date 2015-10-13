class FilmeYTS
  include HTTParty
  base_uri 'https://yts.to/api/v2'

  def self.getAll(params = {})
    options = { query: { limit: params[:limit], page: params[:page] } }
    get("/list_movies.json", options).parsed_response["data"]["movies"]
  end
end