from datetime import date
from sqlmodel import Field, Relationship, SQLModel

from database.enums import StatusPrazo, StatusProcesso, TipoDocumento, TipoPrazo


class ProcessoPartes(SQLModel, table=True):
    __tablename__ = "processo_partes"

    processo_id: int | None = Field(foreign_key="processo.id", primary_key=True)
    cliente_id: int | None = Field(foreign_key="cliente.id", primary_key=True)


class ProcessoBase(SQLModel):
    numero: str = Field(unique=True)
    orgao: str
    assunto: str
    status: StatusProcesso


class Processo(ProcessoBase, table=True):
    __tablename__ = "processo"

    id: int | None = Field(default=None, primary_key=True)
    procurador_id: int = Field(foreign_key="procurador.id")

    procurador: "Procurador" = Relationship(back_populates="processos")
    distribuicoes: list["Distribuicao"] = Relationship(back_populates="processo")
    documentos: list["Documento"] = Relationship(back_populates="processo")
    prazos: list["Prazo"] = Relationship(back_populates="processo")
    clientes: list["Cliente"] = Relationship(
        link_model=ProcessoPartes, back_populates="processos"
    )


class ProcessoCreate(ProcessoBase):
    pass


class ProcessoPublic(ProcessoBase):
    id: int
    procurador: "Procurador"
    documentos: list["Documento"]
    prazos: list["Prazo"]
    clientes: list["Cliente"]


class PrazoBase(SQLModel):
    tipo: TipoPrazo
    data_vencimento: date
    status: StatusPrazo


class Prazo(PrazoBase, table=True):
    __tablename__ = "prazo"

    id: int | None = Field(default=None, primary_key=True)
    processo_id: int = Field(foreign_key="processo.id")

    processo: "Processo" = Relationship(back_populates="prazos")


class PrazoCreate(PrazoBase):
    pass


class PrazoPublic(PrazoBase):
    id: int
    processo: "Processo"


class DocumentoBase(SQLModel):
    nome: str
    tipo: TipoDocumento
    caminho: str


class Documento(DocumentoBase, table=True):
    __tablename__ = "documento"

    id: int | None = Field(default=None, primary_key=True)
    processo_id: int = Field(foreign_key="processo.id")

    processo: "Processo" = Relationship(back_populates="documentos")


class DocumentoCreate(DocumentoBase):
    pass


class DocumentoPublic(DocumentoBase):
    id: int
    processo: "Processo"


class DistribuicaoBase(SQLModel):
    data_mudanca: date


class Distribuicao(DistribuicaoBase, table=True):
    __tablename__ = "distribuicao"

    id: int | None = Field(default=None, primary_key=True)
    processo_id: int = Field(foreign_key="processo.id")
    procurador_antigo_id: int = Field(foreign_key="procurador.id")
    procurador_novo_id: int = Field(foreign_key="procurador.id")

    processo: "Processo" = Relationship(back_populates="distribuicoes")
    procurador_antigo: "Procurador" = Relationship(
        sa_relationship_kwargs={"foreign_keys": "[Distribuicao.procurador_antigo_id]"}
    )
    procurador_novo: "Procurador" = Relationship(
        sa_relationship_kwargs={"foreign_keys": "[Distribuicao.procurador_novo_id]"}
    )


class DistribuicaoPublic(DistribuicaoBase):
    processo: 'Processo'
    procurador_antigo: 'Procurador'
    procurador_novo: 'Procurador'


class Pessoa(SQLModel):
    cpf: str = Field(unique=True)
    nome: str


class Procurador(Pessoa, table=True):
    __tablename__ = "procurador"

    id: int | None = Field(default=None, primary_key=True)
    oab: str = Field(unique=True)

    processos: list["Processo"] = Relationship(back_populates="procurador")
    distribuicao_antigo: list[Distribuicao] = Relationship(
        back_populates='procurador_antigo',
        sa_relationship_kwargs={
            "foreign_keys": "[Distribuicao.procurador_antigo_id]",
        }
    )

    distribuicao_novo: list[Distribuicao] = Relationship(
        back_populates='procurador_novo',
        sa_relationship_kwargs={
            "foreign_keys": "[Distribuicao.procurador_novo_id]",
        }
    )


class ProcuradorCreate(Pessoa):
    oab: str


class ProcuradorPublic(Pessoa):
    id: int
    oab: str
    processos: list["Processo"]


class Cliente(Pessoa, table=True):
    __tablename__ = "cliente"

    id: int | None = Field(default=None, primary_key=True)

    processos: list["Processo"] = Relationship(
        link_model=ProcessoPartes, back_populates="clientes"
    )


class ClienteCreate(Pessoa):
    pass


class ClientePublic(Pessoa):
    id: int
    processos: list["Processo"]
