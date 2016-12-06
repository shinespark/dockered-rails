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

db:migrate

```zsh
$ docker-compose exec rails bundle exec rake db:migrate
```

## FAQ

If you meet to shutdown rails.

rm pid.

```zsh
$ make
```
