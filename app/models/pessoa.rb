class Pessoa < ApplicationRecord
  has_one :pontuacao_pessoa

  def pontuacao
    pontuacao_pessoa&.pontuacao_total || 0
  end
end
