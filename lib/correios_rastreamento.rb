require 'active_data'
require 'recursive-open-struct'
require "forwardable"
require 'net/http/persistent'
require 'nokogiri'
require 'savon'

require 'correios_rastreamento/api'
require 'correios_rastreamento/client'
require 'correios_rastreamento/response'
require 'correios_rastreamento/version'

require 'correios_rastreamento/methods/busca_encomenda'

module CorreiosRastreamento
	class << self

    extend Forwardable

    #def_delegators :configuration, :cnpj, :user, :password, :administrative_code, :contract, :code_service, :card, :environment

	end
end