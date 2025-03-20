from fastapi import APIRouter
from sqlmodel import select


from database.models import Documento, DocumentoCreate, DocumentoPublic
from deps import SessionDep


router = APIRouter()


@router.get('/')
def get_documentos(db: SessionDep) -> list[DocumentoPublic]:
    return db.exec(select(Documento)).all()


@router.get('/{documento_id}')
def get_documento(documento_id: int, db: SessionDep) -> DocumentoPublic:
    return db.exec(select(Documento).where(Documento.id==documento_id)).first()


@router.post('/')
def add_documento(documento_create: DocumentoCreate, db: SessionDep) -> DocumentoPublic:
    documento = Documento.model_validate(documento_create)

    db.add(documento)
    db.commit()
    
    return documento