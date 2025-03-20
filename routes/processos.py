from datetime import datetime
from fastapi import APIRouter, HTTPException
from sqlmodel import select


from database.models import Distribuicao, Processo, ProcessoCreate, ProcessoPublic, Procurador
from deps import SessionDep


router = APIRouter()


@router.get('/')
def get_processos(db: SessionDep) -> list[ProcessoPublic]:
    return db.exec(select(Processo)).all()


@router.get('/{procurador_id}')
def get_processo(processo_id: int, db: SessionDep) -> ProcessoPublic:
    return db.exec(select(Processo).where(Processo.id==processo_id)).first()


@router.post('/')
def add_processo(processo_create: ProcessoCreate, db: SessionDep) -> ProcessoPublic:
    processo = Processo.model_validate(processo_create)

    db.add(processo)
    db.commit()

    return processo


@router.put('/')
def modificar_procurador_processo(processo_id: int, procurador_id: int, db: SessionDep):
    processo = db.exec(select(Processo).where(Processo.id==processo_id)).first()
    
    if not processo:
        raise HTTPException(status_code=404, detail='Processo não encontrado')
    
    novo_procurador = db.exec(select(Procurador).where(Procurador.id==procurador_id)).first()
    antigo_procurador = processo.procurador
    processo.procurador = novo_procurador

    nova_distribuicao = Distribuicao(
        processo=processo,
        procurador_antigo=antigo_procurador,
        procurador_novo=novo_procurador,
        data_mudanca=datetime.now().date()
    )

    db.add(nova_distribuicao)
    db.add(processo)
    db.commit()