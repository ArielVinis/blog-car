# Rails Learning Project

Este é um projeto de estudo e prática com Ruby on Rails, focado em explorar e compreender a estrutura e funcionalidades do framework. O objetivo é desenvolver habilidades práticas com Rails, que será minha principal ferramenta de trabalho.

## Sobre o Projeto

Este projeto serve como um ambiente de aprendizado para:
- Entender a arquitetura MVC do Rails
- Praticar o desenvolvimento de aplicações web
- Explorar recursos e gems do ecossistema Rails
- Desenvolver boas práticas de programação

## Requisitos Técnicos

* Ruby versão: 3.2.0 ou superior
* Rails versão: 7.0.0 ou superior
* PostgreSQL como banco de dados
* Node.js e Yarn para gerenciamento de assets

## Configuração do Ambiente

1. Clone o repositório
2. Execute `bundle install` para instalar as dependências
3. Configure o banco de dados em `config/database.yml`
4. Execute `rails db:create db:migrate` para criar e configurar o banco
5. Inicie o servidor com `rails server`

## Estrutura do Projeto

O projeto segue a estrutura padrão do Rails, organizado em:
- `app/` - Controllers, Models, Views e Helpers
- `config/` - Configurações da aplicação
- `db/` - Migrações e seeds do banco de dados

## Desenvolvimento de Vehicle

O recurso Vehicle foi implementado como um exemplo prático de CRUD (Create, Read, Update, Delete) em Rails, demonstrando:

### Funcionalidades Implementadas
- Listagem de veículos (`index`)
- Criação de novos veículos (`new`, `create`)
- Visualização detalhada (`show`)
- Edição de veículos existentes (`edit`, `update`)
- Remoção de veículos (`destroy`)

### Estrutura do Controller
O `VehiclesController` implementa todas as ações RESTful necessárias, utilizando:
- `before_action` para carregar o veículo antes das ações específicas
- Parâmetros permitidos (brand, model, year, kind) através de strong parameters
- Redirecionamentos apropriados após cada ação
- Tratamento de erros com renderização de formulários

### Rotas
As rotas foram configuradas em `routes.rb` usando `resources :vehicles` com ações específicas, caso o controller tiver todas as rotas, não precisa utilizar o `only`.

Referencia:
- 
[Bora Codar - Criando uma API REST com Ruby on Rails](https://www.youtube.com/watch?v=F2qEsqDXZWI&ab_channel=BoraCodar)