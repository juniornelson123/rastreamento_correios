module CorreiosRastreamento

	module Methods

		class BuscaEncomenda

			def initialize
				@client = CorreiosRastreamento::Client.new
			end

		 	def call(usuario, senha, codigo, resultado = "T" )
	      busca_encomenda = {usuario: usuario, senha: senha, tipo: "L",resultado: resultado,lingua:"101", objetos: codigo}
	      response = @client.call_request :busca_eventos_lista, busca_encomenda

	      return response.busca_eventos_lista_response.return

    	end
		end

	end

end