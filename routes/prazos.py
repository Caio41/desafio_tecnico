from fastapi import APIRouter
from sqlmodel import select


from database.models import Prazo, PrazoCreate, PrazoPublic
from deps import SessionDep

router = APIRouter()


@router.get('/')
def get_prazos(db: SessionDep) -> list[PrazoPublic]:
    return db.exec(select(Prazo)).all()


@router.get('/{prazo_id}')
def get_prazo(prazo_id: int, db: SessionDep) -> PrazoPublic:
    return db.exec(select(Prazo).where(Prazo.id==prazo_id)).first()


@router.post('/')
def add_prazo(prazo_create: PrazoCreate, db: SessionDep) -> PrazoPublic:
    prazo = Prazo.model_validate(prazo_create)

    db.add(prazo)
    db.commit()

    return prazo