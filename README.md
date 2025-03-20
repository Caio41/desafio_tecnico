
Dependências

Para obter as dependências do projeto, pode ser usado tanto o poetry quanto o pip:

Para o poetry, faça:


Para o pip, faça:


Entregáveis
1) Modelo de banco de dados
    O esquema SQL do banco pode ser encontrado em database/schema.sql, gerado
    a partir dos modelos presentes em models.py. Ao rodar o projeto, as tabelas são criadas automaticamente,
    junto de alguns dados ficticios. Também incluí um script de inicialização do banco na mesma pasta
    
    Além disso, fiz uma API simples para que seja possível interagir com esse banco, com rotas para inserção e visualização dos dados.

    Para ter acesso a essa API, primeiro é necessário criar um arquivo .env e adicionar essa variável:
    DATABASE_URL=postgresql+psycopg://USUARIO:SENHA@localhost/NOME_BANCO
    Com o 'USUARIO', 'SENHA' e 'NOME_BANCO' adequado.

    Com isso feito, basta utilizar uvicorn main:app e acessar http://127.0.0.1:8000


2) Análise de dados
    Todo código referente à essa seção se encontra na pasta 'analysis', que também contém um arquivo README.md com uma explicação detalhada do que foi feito.

3) Documentação
    O diagrama de classes pode ser encontrado na pasta docs