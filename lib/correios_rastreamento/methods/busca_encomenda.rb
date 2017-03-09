module CorreiosRastreamento
	
	module Methods
		
		class BuscaEncomenda

			def initialize
				@client = CorreiosRastreamento::Client.new				
			end
		
		 	def call(codigo, resultado = "T" )
	      busca_encomenda = {tipo: "L",resultado: resultado,lingua:"101", objetos: codigo}
	      response = @client.call_request :busca_eventos_lista, busca_encomenda

	      return response.busca_eventos_lista_response.return

    	end
		end
	
	end

end