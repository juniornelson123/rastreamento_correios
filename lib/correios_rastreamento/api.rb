module CorreiosRastreamento
  class Api

    def initialize
    end


    def busca_encomenda(usuario, senha, codigo, tipo="T")
      request = Methods::BuscaEncomenda.new
      request.call(usuario, senha, codigo, tipo)
    end


  end
end