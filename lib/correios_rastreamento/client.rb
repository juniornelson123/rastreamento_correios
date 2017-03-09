module CorreiosRastreamento
	class Client

		attr_reader :client, :uri

		def initialize()
			@uri = get_base_uri

			@client = Savon.client(opts)
		end

		

		def opts
			options = {adapter: :net_http_persistent, wsdl: @uri, :ssl_verify_mode=> :none, open_timeout: 30, read_timeout: 30 }

			options.merge!({ headers: { 'SOAPAction' => '' }})

			options
		end

		def call_request(method, message)
			resp = @client.call method, message: message

			Response.new resp.http.code, resp.body
		end

		def get_base_uri
			
				"http://webservice.correios.com.br/service/rastro/Rastro.wsdl"
			
		end
	end
end