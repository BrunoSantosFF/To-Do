# TO DO LIST

## Criar o ambiente em Ruby on Rails
Crie um novo projeto Rails:
```
rails new todo_list
```
Acesse o diretório do projeto:
```
cd todo_list
```
Configurando o banco de dados (SQLite padrão):
```
rails db:create
```

## Criando os modelos (List e Item)
Criação do modelo **List** (lista de tarefas) e **Item** (item dentro de uma lista):
```
rails g model List name:string && rails g model Item title:string completed:boolean list:references
```

## Criando os controllers e os views
Criação dos controllers List e Item:
```
rails g controller Lists index show new create edit update destroy && rails g controller Items create update destroy
```

//=================================
# Autentificação e Usuário

Fazendo uma tela para usuarios com autitificação (Devise)

Adicione a gem devise ao seu Gemfile:
```
gem 'devise'
```
Instale a gem:

```
bundle install
```
Gere as configurações básicas do Devise:
```
rails generate devise:install
```
Criando o modelo User:
```
rails generate devise User
rails db:migrate

```