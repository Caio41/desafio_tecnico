from datetime import date
import random


nomes = [
    "Ana", "Bruno", "Carlos", "Daniela", "Eduardo", "Fernanda", "Gabriel", "Helena", "Igor", "Juliana",
    "Kleber", "Larissa", "Marcos", "Natália", "Otávio", "Paula", "Ricardo", "Sabrina", "Thiago", "Vanessa",
    "Alex", "Bianca", "Caio", "Débora", "Eliseu", "Fábio", "Giovana", "Henrique", "Marina", "João",
    "Karina", "Leonardo", "Michele", "Nathan", "Olívia", "Patrícia", "Rafael", "Simone", "Tatiane", "Vinícius",
    "Anderson", "Beatriz", "Cristiano", "Daniele", "Emerson", "Flávia", "Gustavo", "Heloísa", "Ismael", "José"
]

sobrenomes = [
    "Silva", "Santos", "Oliveira", "Souza", "Pereira", "Lima", "Carvalho", "Ferreira", "Rodrigues", "Almeida",
    "Costa", "Martins", "Araújo", "Barbosa", "Correia", "Freitas", "Gomes", "Ribeiro", "Monteiro", "Cardoso",
    "Melo", "Duarte", "Nascimento", "Moreira", "Rocha", "Teixeira", "Vieira", "Xavier", "Cavalcanti", "Pinto",
    "Neves", "Moura", "Rezende", "Batista", "Campos", "Farias", "Borges", "Andrade", "Cruz", "Azevedo",
    "Mendes", "Tavares", "Amaral", "Guimarães", "Coelho", "Lopes", "Siqueira", "Figueiredo", "Brito", "Queiroz"
]


documentos = [
    "peticao_inicial", "recurso_de_apelacao", "embargos_de_declaracao", "contestacao", "mandado_de_seguranca",
    "acao_de_indenizacao", "habeas_corpus", "recurso_especial", "recurso_extraordinario", "acao_popular",
    "acao_civil_publica", "parecer_juridico", "acao_de_consignacao_em_pagamento", "acao_de_execucao",
    "pedido_de_tutela_antecipada", "acao_de_usucapiao", "acao_de_alimentos", "acao_de_revisao_de_pensao",
    "acao_trabalhista", "recurso_ordinario", "recurso_de_revista", "agravo_de_instrumento", "agravo_interno",
    "acao_declaratoria", "acao_de_cobranca", "acao_de_retificacao_de_registro", "acao_monitoria",
    "acao_de_reintegracao_de_posse", "acao_de_interdito_proibitorio", "acao_de_nunciacao_de_obra_nova",
    "pedido_de_habeas_data", "acao_de_improbidade_administrativa", "acao_de_despejo", "acao_de_inventario",
    "pedido_de_falencia", "acao_rescisoria", "pedido_de_homologacao_de_acordo", "acao_de_divorcio",
    "acao_de_guarda", "acao_de_interdicao", "pedido_de_liberdade_provisoria", "acao_de_anulacao_de_casamento",
    "acao_revisional_de_contrato", "acao_de_busca_e_apreensao", "pedido_de_providencias", "impugnacao_ao_cumprimento_de_sentenca",
    "reclamacao_constitucional", "pedido_de_desaforamento"
]


orgaos = [
    "Tribunal de Justiça do Estado de Sergipe (TJ-SE)",
    "Tribunal Regional Federal da 1ª Região (TRF-1)",
    "Supremo Tribunal Federal (STF)",
    "Superior Tribunal de Justiça (STJ)",
    "Justiça do Trabalho da 2ª Região (TRT-2)",
    "Justiça Federal de Sergipe (JFS)",
    "Justiça do Trabalho da 20ª Região (TRT-20)",
    "Tribunal de Justiça do Estado da Bahia (TJ-BA)",
    "Justiça Militar da União (JMU)",
    "Tribunal de Justiça do Estado de Pernambuco (TJ-PE)"
]


estados = [
    "AC", "AL", "AP", "AM", "BA", 
    "CE", "DF", "SE", "GO", "MA", 
    "MG", "MS", "MT", "PA", "PB"
]


assuntos = [
    "Direitos Humanos",
    "Responsabilidade Civil",
    "Direitos Trabalhistas",
    "Contratos",
    "Família e Sucessões",
    "Propriedade e Posse",
    "Falência e Recuperação Judicial",
    "Impostos e Taxas",
    "Responsabilidade Penal",
    "Dano Moral",
    "Dano Material",
    "Hereditariedade e Sucessão",
    "Indenização",
    "Conflitos de Consumo",
    "Gestão Pública",
    "Infrações Administrativas",
    "Licitações e Contratos Administrativos",
    "Direitos do Consumidor",
    "Propriedade Intelectual",
    "Infrações Ambientais"
]



def gerar_nome_doc():
    '''Gera nome aleatório para um documento no formato:
       tipo_doc + num_aleatorio + .pdf
       
       Exemplos:
       - acao_de_indenizacao1.pdf
       - acao_de_alimentos64.pdf
       - pedido_de_liberdade_provisoria86.pdf
    '''
    return f'{random.choice(documentos)}{random.randint(1,99)}.pdf'


def gerar_caminho(nome_arquivo):
    '''Gera caminho fictício para o documento'''
    return f'caminho/ficticio/{nome_arquivo}'


def gerar_nome_pessoa():
    '''Gera nome aleatório para uma pessoa no formato:
       nome + sobrenome

       Exemplos:
       Vanessa Almeida
       Otávio Lima
       Anderson Melo
    '''
    return f'{random.choice(nomes)} {random.choice(sobrenomes)}'

def gerar_cpf():
    '''Gera string aleatória com 11 números, não são CPFs reais'''
    return ''.join(random.choices('0123456789', k=11))


def gerar_oab():
    '''Gera string aleatória no formato:
       estado + 6 números
       
       Exemplos:
       SE066360
       BA555716
       DF710092
       '''
    estado = random.choice(estados)
    num_inscricao = ''.join(random.choices('0123456789', k=6))
    return f'{estado}{num_inscricao}'


def gerar_num_processo():
    '''Gera string aleatória com 20 números para representar o número do processo. Não são valores reais.'''
    return ''.join(random.choices('0123456789', k=20))


def gerar_orgao():
    '''Escolhe um órgão aleatório dentre os 10 na lista "orgaos"'''
    return random.choice(orgaos)


def gerar_assunto():
    '''Escolhe um assunto aleatório dentre os 20 na lista "assuntos"'''
    return random.choice(assuntos)


def gerar_data():
    '''Gera data aleatória'''
    return date(
        year=random.randint(2020, 2030),
        month=random.randint(1, 12),
        day=random.randint(1, 28),
    )