from enum import Enum

class TipoDocumento(Enum):
    peticao_inicial = 'Petição Inicial'
    contestacao = 'Contestação'
    recurso = 'Recurso'
    despacho = 'Despacho'


class TipoPrazo(Enum):
    contestacao = 'Contestação'
    recurso = 'Recurso'
    manisfestacao = 'Manifestação'


class StatusProcesso(Enum):
    em_andamento = 'Em andamento'
    aguradando_decisao = 'Aguardando decisão'
    sentenciado = 'Sentenciado'
    arquivado = 'Arquivado'


class StatusPrazo(Enum):
    em_andamento = 'Em andamento'
    vencido = 'Vencido'