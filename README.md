# TO DO LIST


## Sumário
1. [Introdução](#introdução)
2. [Criar o ambiente em Ruby on Rails](#criar-o-ambiente-em-ruby-on-rails)
3. [Criando os modelos (List e Item)](#criando-os-modelos-list-e-item)
4. [Criando os controllers e as views](#criando-os-controllers-e-as-views)
5. [Autenticação e Usuário](#autenticação-e-usuário)
6. [Telas](#telas)
7. [Executar](#executar)
8. [Agradecimento](#agradecimento)

## Introdução

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

## Criando os controllers e as views
Criação dos controllers List e Item:
```
rails g controller Lists index show new create edit update destroy && rails g controller Items create update destroy
```

# Autenticação e Usuário

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

Agora você podera ver algumas telas que foram desenvolvidas ao longo do projeto

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


## Executar

Para executar o programa digite o seguinte comando: 

```
rails s
```

E para conseguir visualizar, digite no seu navegador: 

```
http://localhost:3000/
```

Caso queira ver todas as rotas do site: 

```
http://localhost:3000/rails/info/routes
```

## Observação 

Esse código foi criado com o objetivo de testar a tecnologia Ruby e o framework Rails de forma simples. Provavelmente existe uma maneira mais otimizada de fazer isso, mas o fiz pensando em quem está aprendendo, assim como eu, rsrs. **Leiam a documentação do Rails 7, ajuda bastante!**