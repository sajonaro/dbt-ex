### Useful scrips

```bash
#create symlink to ~./dbt/profile.yml
$ ln -s ~/.dbt/profiles.yml profiles.yml
```

 
```bash
# install dependencies (from .toml file)
$ poetry install

```

### DBT commands (ran via poetry)

```bash
# compile = dbt run 
$ cd ex1
$ poetry run dbt run

# if dbt_project.yml settings have changed
$ poetry run dbt run --full-refresh

# to check validity of connections  = dbt debug 
$ poetry run dbt debug

# run tests = dbt test
$ poetry run dbt test

```