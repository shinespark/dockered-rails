# docker-rails

* Rails
  * Haml
* nginx
* MySQL

## How To Use

```zsh
$ docker-compose build && docker-compose up
```

Now, start rails. Go to `http://localhost` .


## Example

rails commands.

```zsh
$ docker-compose exec rails rails generate scaffold User name:string email:string
```

bundle commands.

```zsh
$ docker-compose exec rails bundle install
```

rake commands.

```zsh
$ docker-compose exec rails rake haml:repalce_erbs
```

db:migrate

```zsh
$ docker-compose exec rails bundle exec rake db:migrate
```

## FAQ

### If you meet to shutdown rails.

rm pid.

```zsh
$ make
```

### When you add some gems.

you can rebuild only rails container.

```zsh
$ docker-compose build rails
$ docker-compose restart
```

### Update gems

```zsh
$ docker-compose exec rails bundle update
$ git add rails/Gemfile.lock
$ git commit
```
