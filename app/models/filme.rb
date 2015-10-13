class Filme
  include ActiveModel::Model

  def self.all(params = {})
    FilmeYTS.getAll(params)
  end
end