from datetime import datetime
from os import getenv
import random
from dotenv import load_dotenv
from database.enums import StatusPrazo, StatusProcesso, TipoDocumento, TipoPrazo
from database.models import (
    Cliente,
    Documento,
    Prazo,
    Processo,
    ProcessoPartes,
    Procurador,
)
from database.utils import (
    gerar_assunto,
    gerar_caminho,
    gerar_data,
    gerar_nome_pessoa,
    gerar_nome_doc,
    gerar_cpf,
    gerar_num_processo,
    gerar_oab,
    gerar_orgao,
)

from sqlmodel import SQLModel, Session, create_engine, func, select

load_dotenv()

DATABASE_URL = getenv("DATABASE_URL")

engine = create_engine(DATABASE_URL)


def init_db():
    SQLModel.metadata.create_all(engine)
    with Session(engine) as db:
        if not existe(Processo, db):
            populate_db(db)


def existe(tabela, db) -> bool:
    return db.exec(func.count(tabela.id)).scalar() or 0


# Populando banco com valores aleatórios
def populate_db(db):
    populate_clientes(db)
    populate_procuradores(db)
    populate_processo(db)
    populate_docs(db)
    populate_prazos(db)
    populate_processo_partes(db)


def populate_clientes(db, qtd_pessoas=50):
    clientes = [
        Cliente(
            cpf=gerar_cpf(),
            nome=gerar_nome_pessoa(),
        )
        for _ in range(qtd_pessoas)
    ]
    db.add_all(clientes)
    db.commit()


def populate_procuradores(db, qtd_pessoas=25):
    procuradores = [
        Procurador(
            cpf=gerar_cpf(),
            nome=gerar_nome_pessoa(),
            oab=gerar_oab(),
        )
        for _ in range(qtd_pessoas)
    ]
    db.add_all(procuradores)
    db.commit()


def populate_processo(db, qtd_processos=50):
    procuradores = db.exec(select(Procurador)).all()
    processos = [
        Processo(
            numero=gerar_num_processo(),
            orgao=gerar_orgao(),
            assunto=gerar_assunto(),
            status=random.choice(list(StatusProcesso)),
            procurador=random.choice(procuradores),
        )
        for _ in range(qtd_processos)
    ]
    db.add_all(processos)
    db.commit()


def populate_docs(db, qtd_docs=50):
    processos = db.exec(select(Processo)).all()
    docs = []
    for _ in range(qtd_docs):
        nome = gerar_nome_doc()
        tipo = random.choice(list(TipoDocumento))
        caminho = gerar_caminho(nome)
        processo = random.choice(processos)
        docs.append(
            Documento(
                nome=nome,
                tipo=tipo,
                caminho=caminho,
                processo=processo,
            )
        )
    db.add_all(docs)
    db.commit()


def populate_prazos(db, qtd_prazos=15):
    processos = db.exec(select(Processo)).all()
    prazos = []
    for _ in range(qtd_prazos):
        tipo = random.choice(list(TipoPrazo))
        data_vencimento = gerar_data()
        status = (
            StatusPrazo.vencido
            if data_vencimento < datetime.now().date()
            else StatusPrazo.em_andamento
        )
        processo = random.choice(processos)

        prazos.append(
            Prazo(
                tipo=tipo,
                data_vencimento=data_vencimento,
                status=status,
                processo=processo,
            )
        )
    db.add_all(prazos)
    db.commit()


def populate_processo_partes(db, extras=20):
    ids_processos = db.exec(select(Processo.id)).all()
    ids_clientes = db.exec(select(Cliente.id)).all()

    partes = []
    pares = set()
    
    # Garantindo que todos processos tem pelo menos um cliente
    for processo_id in ids_processos:
        cliente_id = random.choice(ids_clientes)
        par = (processo_id, cliente_id)
        pares.add(par)
        partes.append(
            ProcessoPartes(
                processo_id=processo_id,
                cliente_id=cliente_id,
            )
        )

    # Tenta adicionar até N clientes extras aos processos aleatoriamente
    for _ in range(extras):
        processo_id = random.choice(ids_processos)
        cliente_id = random.choice(ids_clientes)
        if (processo_id, cliente_id) not in pares:
            partes.append(
                ProcessoPartes(
                    processo_id=processo_id,
                    cliente_id=cliente_id,
                )
            )

    db.add_all(partes)
    db.commit()
