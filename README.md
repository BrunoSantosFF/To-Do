# TO DO LIST

Este projeto é uma aplicação de lista de tarefas (to-do list) desenvolvida em Ruby on Rails, com autenticação de usuários via Devise. Cada usuário pode criar, editar e gerenciar sua própria lista de tarefas de forma privada, acessível apenas após o login. O sistema garante que apenas usuários autenticados possam visualizar e manipular suas respectivas listas.

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
Criando uma referencia do usuario com a lista do todo no DB:
```
rails generate migration AddUserToLists user:references
```

Criando as views do Usuário: 
```
rails generate devise:views

```

## Telas

Agora voce podera ver algumas telas que foram desenvolvidas ao longo do projeto

*Tela de login:*
<p align="center">
  <img src="/images/login.png" alt="login" width="300"/>
  <br>
  <em>Log in</em>
</p>


*Tela de Usuário:*
<p align="center">
  <img src="/images/usuario.png" alt="usuario" width="300"/>
  <br>
  <em>User</em>
</p>

*Tela de Listas:*
<p align="center">
  <img src="/images/listas.png" alt="listas" width="300"/>
  <br>
  <em>List</em>
</p>

*Tela de Editar Lista:*

<p align="center">
  <img src="/images/editar_lista.png" alt="editar lista" width="300"/>
  <br>
  <em>Edit List</em>
</p>
