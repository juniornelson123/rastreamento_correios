# Biblioteca para rastreamento de encomendas dos Correios em Ruby

## Descrição

A biblioteca em Ruby , permite o rastreio de encomendas pelo codigo gerado pelos correios:
  
 - Buscar Encomendas [busca informações do objeto que esta sendo enviado]
 
## Instalação
- Adicione a biblioteca ao seu Gemfile.

```ruby
gem "correios_rastreamento", github: "juniornelson123/correios_rastreamento"
```

 - Execute o comando `bundle install`.

## Buscar Encomenda

Este método retorna todas as informações referentes a encomenda enviada.
```ruby
require 'correios_rastreamento'

# inicializa a api
api = CorreiosRastreamento::Api.new

# chamada do metodo
api.busca_encomenda(codigo_encomenda)

```

## Buscar Encomenda(Adicionando resultado('U','T'...))

Este método retorna todas as informações referentes a encomenda enviada levando em conta o resultado que é solicitado .
T: serão retornados todos os eventos do objeto; U: será retornado apenas o último evento do objeto.

```ruby
require 'correios_rastreamento'

# inicializa a api
api = CorreiosRastreamento::Api.new

# chamada do metodo
api.busca_encomenda(codigo_encomenda, 'T')

```


## Contribuições

Achou e corrigiu um bug ou tem alguma feature em mente e deseja contribuir?

* Faça um fork
* Adicione sua feature ou correção de bug (`git checkout -b my-new-feature`)
* Commit suas mudanças (`git commit -am 'Added some feature'`)
* Rode um push para o branch (`git push origin my-new-feature`)
* Envie um Pull Request

O código, os commits e os comentários devem ser em inglês.

Adicione exemplos para sua nova feature.

Referências
  * manual de rastreamento de objetos correios : https://www.correios.com.br/para-voce/correios-de-a-a-z/pdf/rastreamento-de-objetos/manual_rastreamentoobjetosws.pdf
  
  [manual rastreamento de objetos]: http://www.corporativo.correios.com.br/encomendas/sigepweb/doc/Manual_de_Implementacao_do_Web_Service_SIGEPWEB_Logistica_Reversa.pdf
