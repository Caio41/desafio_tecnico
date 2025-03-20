from fastapi import APIRouter
from sqlmodel import select

from database.models import Procurador, ProcuradorCreate, ProcuradorPublic
from deps import SessionDep


router = APIRouter()



@router.get('/')
def get_procuradores(db: SessionDep) -> list[ProcuradorPublic]:
    return db.exec(select(Procurador)).all()


@router.get('/{procurador_id}')
def get_procurador(procurador_id: int, db: SessionDep) -> ProcuradorPublic:
    return db.exec(select(Procurador).where(Procurador.id==procurador_id)).first()


@router.post('/')
def add_procurador(procurador_create: ProcuradorCreate, db: SessionDep) -> ProcuradorPublic:
    procurador = Procurador.model_validate(procurador_create)
    
    db.add(procurador)
    db.commit()

    return procurador
