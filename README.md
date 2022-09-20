# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## instalação

* rails g scaffold Product name:string

* rails db:migrate -> (vai gerar uma tabela 'product' com nome 'name')

* rails s -> (subir o servidor)

* rails db:rollback -> (desfaz a migração de tabela)

* rails d scaffold Product -> (deleta a tabela 'Product')

* rails g controller Articles index -> (cria um novo controller-Articles-index)
>     create  app/controllers/articles_controller.rb
       route  get 'articles/index'
      invoke  erb
      create    app/views/articles
      create    app/views/articles/index.html.erb
      invoke  test_unit
      create    test/controllers/articles_controller_test.rb
      invoke  helper
      create    app/helpers/articles_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/articles.scss

* rails g model Article title:string body:text -> (cria um model para gerar os campos da tabela)

* rails db:migrate (cria a tabela 'Article')

> rails c (abre um terminal no projeto)
- insere dados na nos campos da tabela
    - article = Article.new(title: 'Ruby on Rails', body: 'Primeiro post do blog.').save
    - Article.find(1)
    - Article.all