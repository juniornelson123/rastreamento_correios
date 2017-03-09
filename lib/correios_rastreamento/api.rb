module CorreiosRastreamento
  class Api

    def initialize
    end


    def busca_encomenda(codigo, tipo="T")
      request = Methods::BuscaEncomenda.new
      request.call(codigo, tipo)
    end
   

  end
end