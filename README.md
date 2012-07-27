# Nearby Friends


## Setup

Install bundler and run `bundle install`:

```bash
gem install bundler && bundle
```

Configure `config/database.yml`:

```yaml
development: &development
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: development_database
  pool: 5
  host: localhost
  username:
  password:

test:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: development_database
  pool: 5
  host: localhost
  username:
  password:

production: *development
```

Create database and tables

```bash
rake db:create && rake db:migrate
```

Seed data
```bash
rake db:seed
```

Start application
```bash
rails server
```


## Test

```bash
bundle exec guard
```
