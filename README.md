[![Codeship Status for rrcosta/todo](https://app.codeship.com/projects/9dbcab20-0229-0137-5dbb-7e8fe215f724/status?branch=master)](/projects/325023)


# Projeto

## TODO-LIST API (API para armazenamento/leitura de tarefas)

Criar uma RESTFUL API simples (em sua linguagem preferida) que armazene e atualize tarefas (TODO LIST
API). (ex: GET, PUT, POST, DELETE /todo)

Informações sobre a API:

* Toda tarefa deve possuir um status (pending ou completed)
* A API deve persistir os dados em um banco de dados
* A API deve disponibilizar uma rota para listagem das tarefas e seu status
* A API deve fornecer uma rota para validar o funcionamento de seus componentes 

## Link para testes

* [Desafio Todo ](https://todo-itau-dev.herokuapp.com)


## Ambiente de desenvolvimento

### Pre Requirements
* Linux / Mac OSX
* [Git](https://git-scm.com)
* [Ruby 2.6.0](https://www.ruby-lang.org)
* [Rails 5.2.2](https://www.ruby-lang.org)
* [PostgreSQL 10.5](https://www.postgresql.org)
* [Bundler gem](https://github.com/bundler/bundler)

### Biblioteca de Testes

* [rspec-rails](https://github.com/rspec/rspec-rails)
* [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [rails-controller-testing](https://github.com/rails/rails-controller-testing)
* [faker](https://github.com/stympy/faker)
* [simplecov](https://github.com/colszowka/simplecov)

### Motivos desta stack

Os motivos que escolhi esta stack para resolução do desafio proposto foi que a linguagem ruby é forte e madura o suficiente para atender os requisitos proposto, além do mais de ser uma lingagem de programação mais usada no mundo para soluções web.

A linguagem é conhecida por incorporar as melhores características de Perl, Java, Python, Smalltalk, Eiffel, Ada e Lisp.

### Instalações dos pré-requisitos

* Git

O primeiro passo que deverá efetuar será instalar o Git (https://git-scm.com), caso ainda não o tenha.
Vide estes tutoriais para instalação: 

  https://git-scm.com/book/pt-br/v1/Primeiros-passos-Instalando-Git
  https://www.liquidweb.com/kb/install-git-ubuntu-16-04-lts/


Após a instalação do git, deverá configura-lo (https://git-scm.com/book/pt-br/v2/Começando-Configuração-Inicial-do-Git) e dar clonar (https://git-scm.com/book/pt-br/v2/Git-Basics-Getting-a-Git-Repository) o seguinte repositório: (git@github.com:rrcosta/api-intelipost.git), após clona-lo deverá seguinte os passos abaixo

* Ruby

Para obter a versão 2.6.0 do Ruby, basta abrir um terminal em seu sistema e digitar um dos seguintes comandos:

Para: Mac

Para maiores detalhes vide: http://railsapps.github.io/installrubyonrails-mac.html

```
 brew install ruby
```

Para: Debian, Ubuntu e derivados

```
sudo apt-get install ruby-full 
```

Para: CentOS, Fedora e RHEL

```
sudo yum install ruby
```

Para: Arch Linux, Manjaro, Antergos e derivados

```
sudo pacman -S ruby
```

* Ruby on Rails

Após instalar o ruby (passo acima), deverá instalar o framework Rails, através do comando abaixo

```
gem install rails --version=5.2.2
```

Obs: dependendo das configurações de sua maquina, este processo poderá demoarar, mas não se preoucupe esse é o único passo que poderá demorar um pouco ;)

* PostgreSQL

Para instalação do Postgresql, entre neste tutorial e mande brasa na instação de um dos melhores BD gratuidos para se trabalhar!

https://www.edivaldobrito.com.br/como-instalar-o-postgresql-9-4-no-ubuntu-e-centos/

* Foreman

Para a instação do foreman, sugiro acessar este tutorial bem explicativo

http://devopslab.com.br/como-instalar-e-configurar-o-the-foreman/



### Procedimentos que deverá efetuar para subir o ambiente

### Instalação e execução da aplicação

1. Faça o clone com **git clone git@github.com:rrcosta/api-intelipost.git**

2. Vá ao diretório do projeto e execute

        $ bundle install

3. Copie o conteúdo do arquivo .env.example para o arquivo .env e altere com as credenciais de seu ambiente local

        $ cp .env.example .env

4. Abra o arquivo .env e coloque os seus dados de acesso do seu banco de dados Postgrsql

5. Faça o setup do banco de dados: Criação do Banco de Dados

        $ bin/rails db:create

6. Faça o setup do banco de dados: Criação das tabelas Banco de Dados

        $ bin/rails db:migrate

7. Inicie a aplicação usando o servidor local (Irá iniciar na porta padrão que é a 3000)

        $ rails s

8. Após subir a aplicação, a mesma disponibilizará os [endpoints da API](http://localhost:3000/api/v1/todo_lists), assim como uma tela para Cadastro, Edição e remoção dos registros, ou seja, temos um FrontEnd e uma API para iteragir com os dados.


## Testes

Para executar os testes:

1. Crie o banco de dados de teste

        $ bin/rails db:test:prepare

2. Execute os testes

        $ COVERAGE=true bin/rspec

3. Verifique o resultado dos testes no arquivo

        ./coverage/index.html


## Como acessar a aplicação via FrontEnd ?

Para utilizarmos a aplicação temos a opção via FrontEnd [Navegador](http://localhost:3000), atraves da url http://localhost:3000

## Como acessar a aplicação via API?

Para utilizarmos a aplicação via API, podemos utilizar o [curl](https://curl.haxx.se) ou pelo client de API [Postman](https://www.getpostman.com)

Endpoints disponíveis: 

| nome da ação                             |  http_verb   |  Endpoint
| ---------------------------------------- | ------------ | ------------------------------------- 
| api_v1_todo_lists                        |   GET        | /api/v1/todo_lists(.:format)
| api_v1_todo_lists                        |   POST       | /api/v1/todo_lists(.:format)
| new_api_v1_todo_list                     |   GET        | /api/v1/todo_lists/new(.:format)
| edit_api_v1_todo_list                    |   GET        | /api/v1/todo_lists/:id/edit(.:format)
| api_v1_todo_list                         |   GET        | /api/v1/todo_lists/:id(.:format)
| api_v1_todo_list                         |   PATCH      | /api/v1/todo_lists/:id(.:format)
| api_v1_todo_list                         |   PUT        | /api/v1/todo_lists/:id(.:format)
| api_v1_todo_list                         |   DELETE     | /api/v1/todo_lists/:id(.:format)
| api_v1_todo_pending                      |   GET        | /api/v1/todo_pending(.:format)
| api_v1_todo_completed                    |   GET        | /api/v1/todo_completed(.:format) 
| api_v1_metrics                           |   GET        | /api/v1/todo_completed(.:format)
| api_v1_metric                            |   GET        | /api/v1/metrics/:id(.:format)
| api_v1_metric_controller_name            |   GET        | /api/v1/metric_controller_name(.:format)
| api_v1_metric_action_name                |   GET        | /api/v1/metric_action_name(.:format)
| api_v1_metric_average_of_time_process    |   GET        | /api/v1/metric_average_of_time_process(.:format)
