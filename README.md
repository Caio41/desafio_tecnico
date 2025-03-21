
# Dependências

Para obter as dependências do projeto, pode ser usado tanto o [poetry](https://python-poetry.org/docs/#installing-with-pipx). quanto o pip:

Para o poetry, faça:
```sh
# Instala dependências
poetry install

# Ativa venv
poetry env activate
```
Para o pip, faça:
```sh
pip install -r requirements.txt
```
# Entregáveis
## Modelo de banco de dados
O esquema SQL do banco pode ser encontrado em `database/schema.sql`, gerado
a partir dos modelos presentes em `models.py`. Ao rodar o projeto, as tabelas são criadas automaticamente,
junto de alguns dados ficticios. Também incluí um script de inicialização do banco com o nome `populate.sql` na mesma pasta.
    
Além disso, fiz uma API simples para que seja possível interagir com esse banco, com rotas para inserção e visualização dos dados.

Para ter acesso a essa API, primeiro é necessário criar um arquivo .env e adicionar essa variável:
```env
DATABASE_URL=postgresql+psycopg://USUARIO:SENHA@localhost/NOME_BANCO
```
Com o 'USUARIO', 'SENHA' e 'NOME_BANCO' adequados.

Com isso feito, basta utilizar:
```sh
uvicorn main:app
```
e acessar http://127.0.0.1:8000/docs


## Análise de dados
Todo código referente à essa seção se encontra na pasta `analysis`, que também contém um arquivo README.md com uma explicação detalhada do que foi feito.

## Documentação
O diagrama de classes pode ser encontrado na pasta docs, com uma explicação mais detalhada da modelagem.
