class HistoricoAcao < ApplicationRecord
  self.table_name = "historico_acao"

  belongs_to :pessoa
  belongs_to :acao
end
