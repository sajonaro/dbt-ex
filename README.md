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


# run seed, tests, run  in all in one command = dbt build
$ poetry run dbt build
```

### using [DuckDB CLI](https://duckdb.org/docs/installation/?environment=cli) to check dbt results (= query output db)

```bash
# to install DuckDBCLi
$ curl --fail --location --progress-bar --output duckdb_cli-linux-amd64.zip https://github.com/duckdb/duckdb/releases/download/v1.1.3/duckdb_cli-linux-amd64.zip && unzip duckdb_cli-linux-amd64.zip
```

```bash
# to open persisted db (in this case ex2.duckdb)
$ ./duckdb ex2.duckdb 

# to see all tables in current database (while in ./dudckb session)
D show tables;

# to export table `customers` to `customers.txt` file
D COPY (SELECT * FROM customers) TO 'output.txt' (HEADER, DELIMITER ',');
```

