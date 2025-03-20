from fastapi import APIRouter
from sqlmodel import select

from database.models import Cliente, ClienteCreate, ClientePublic
from deps import SessionDep


router = APIRouter()


@router.get('/')
def get_clientes(db: SessionDep) -> list[ClientePublic]:
    return db.exec(select(Cliente)).all()


@router.get('/{cliente_id}')
def get_cliente(cliente_id: int, db: SessionDep) -> ClientePublic:
    return db.exec(select(Cliente).where(Cliente.id==cliente_id)).first()


@router.post('/')
def add_cliente(cliente_create: ClienteCreate, db: SessionDep) -> ClientePublic:
    cliente = Cliente.model_validate(cliente_create)

    db.add(cliente)
    db.commit()

    return cliente
    
