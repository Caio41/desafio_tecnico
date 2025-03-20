from fastapi import FastAPI
from database.inicializacao import init_db
from routes import clientes, documentos, prazos, processos, procuradores


app = FastAPI()

app.include_router(clientes.router, prefix='/clientes', tags=['clientes'])
app.include_router(procuradores.router, prefix='/procuradores', tags=['procuradores'])
app.include_router(processos.router, prefix='/processos', tags=['processos'])
app.include_router(prazos.router, prefix='/prazos', tags=['prazos'])
app.include_router(documentos.router, prefix='/documentos', tags=['documentos'])


@app.on_event('startup')
def on_startup():
    init_db()