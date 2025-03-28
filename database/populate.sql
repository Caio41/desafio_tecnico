--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cliente (cpf, nome, id) VALUES ('04008453425', 'Juliana Oliveira', 1);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('43961097405', 'Bruno Tavares', 2);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('79629848284', 'Carlos Xavier', 3);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('35614796887', 'Larissa Neves', 4);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('29519542924', 'Helena Batista', 5);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('53353554071', 'Nathan Cruz', 6);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('41236486008', 'F├íbio Azevedo', 7);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('20205838537', 'Nat├ília Freitas', 8);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('39435933546', 'Bianca Cruz', 9);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('39646410505', 'Eduardo Guimar├úes', 10);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('42796485807', 'Henrique Amaral', 11);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('73772914218', 'D├®bora Pereira', 12);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('71710165193', 'Daniele Mendes', 13);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('62378084741', 'Fl├ívia Nascimento', 14);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('96050093669', 'Karina Guimar├úes', 15);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('17093142770', 'Carlos Nascimento', 16);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('87441934986', 'Thiago Oliveira', 17);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('01671138511', 'Marina Santos', 18);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('40839583252', 'Cristiano Amaral', 19);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('97859142862', 'Paula Oliveira', 20);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('13555422315', 'Gabriel Brito', 21);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('61765374553', 'Helo├¡sa Souza', 22);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('72092742232', 'Bianca Barbosa', 23);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('08462061774', 'Eliseu Almeida', 24);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('80504550375', 'Eduardo Brito', 25);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('33758259362', 'Fl├ívia Duarte', 26);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('87165577099', 'Marina Nascimento', 27);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('04521052414', 'Helo├¡sa Guimar├úes', 28);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('36440008085', 'Bruno Cavalcanti', 29);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('23415300935', 'Sabrina Azevedo', 30);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('64550397291', 'Helo├¡sa Campos', 31);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('56556194875', 'Vanessa Costa', 32);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('37814079049', 'Ol├¡via Rodrigues', 33);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('52525774622', 'Leonardo Pereira', 34);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('64327884770', 'Emerson Souza', 35);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('94339535408', 'D├®bora Melo', 36);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('84464434659', 'Fernanda Guimar├úes', 37);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('88657792770', 'Eduardo Almeida', 38);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('61609795108', 'Simone Rocha', 39);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('84039251336', 'Sabrina Teixeira', 40);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('57074616251', 'Ricardo Gomes', 41);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('49341697839', 'Marina Vieira', 42);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('17346846196', 'Jos├® Coelho', 43);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('11381807274', 'Tatiane Rodrigues', 44);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('33171018521', 'Beatriz Pereira', 45);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('17398413410', 'D├®bora Lima', 46);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('44373293274', 'Caio Borges', 47);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('45613225071', 'Karina Moreira', 48);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('83641504383', 'Juliana Correia', 49);
INSERT INTO public.cliente (cpf, nome, id) VALUES ('53837701365', 'Carlos Pereira', 50);


--
-- Data for Name: procurador; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('58839879489', 'Michele Monteiro', 1, 'BA238078');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('03857161370', 'Daniele Duarte', 2, 'AC280266');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('13226635067', 'Emerson Tavares', 3, 'AM425877');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('37938901657', 'Sabrina Campos', 4, 'GO386513');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('17051413435', 'Caio Guimar├úes', 5, 'GO610101');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('34790626062', 'Leonardo Teixeira', 6, 'SE424424');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('26795555623', 'Ol├¡via Moreira', 7, 'AP654489');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('16720968946', 'F├íbio Neves', 8, 'AL754965');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('96022940987', 'Emerson Gomes', 9, 'MS889792');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('03954840850', 'Tatiane Azevedo', 10, 'SE050973');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('16990652623', 'Nat├ília Moreira', 11, 'GO217599');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('62689833589', 'Larissa Guimar├úes', 12, 'SE190861');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('08108939089', 'Nat├ília Teixeira', 13, 'AC109103');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('09717383419', 'Cristiano Melo', 14, 'DF653233');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('25839198315', 'Juliana Cardoso', 15, 'CE133064');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('56761492081', 'Simone Coelho', 16, 'AM028006');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('86112181757', 'Tatiane Freitas', 17, 'PA751349');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('31577421961', 'Simone Neves', 18, 'AM684517');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('99441652274', 'Ana Brito', 19, 'PA113918');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('82251602646', 'Juliana Pinto', 20, 'DF016584');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('25797954302', 'Fl├ívia Gomes', 21, 'CE066004');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('97439552283', 'Ot├ívio Costa', 22, 'DF339984');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('22807976639', 'Juliana Pinto', 23, 'PA749797');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('69992347287', 'Alex Souza', 24, 'DF229932');
INSERT INTO public.procurador (cpf, nome, id, oab) VALUES ('60862703454', 'Jos├® Cruz', 25, 'MS879777');


--
-- Data for Name: processo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('36193262331845903861', 'Justi├ºa Militar da Uni├úo (JMU)', 'Infra├º├Áes Ambientais', 'sentenciado', 1, 8);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('94423018252446184792', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Responsabilidade Civil', 'aguradando_decisao', 2, 22);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('26541810103465663798', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Infra├º├Áes Ambientais', 'em_andamento', 3, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('95096663250477982079', 'Tribunal de Justi├ºa do Estado de Sergipe (TJ-SE)', 'Propriedade e Posse', 'arquivado', 4, 9);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('30493882198089951204', 'Tribunal Regional Federal da 1┬¬ Regi├úo (TRF-1)', 'Direitos Humanos', 'arquivado', 5, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('01851284219445867698', 'Tribunal de Justi├ºa do Estado de Sergipe (TJ-SE)', 'Dano Moral', 'em_andamento', 6, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('39828430127032817136', 'Tribunal de Justi├ºa do Estado de Pernambuco (TJ-PE)', 'Fam├¡lia e Sucess├Áes', 'sentenciado', 7, 13);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('42529159882855948165', 'Justi├ºa Militar da Uni├úo (JMU)', 'Propriedade e Posse', 'sentenciado', 8, 5);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('78659740622523504623', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Licita├º├Áes e Contratos Administrativos', 'arquivado', 9, 1);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('13444310465501506478', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Propriedade Intelectual', 'arquivado', 10, 25);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('35313930175163488786', 'Justi├ºa Federal de Sergipe (JFS)', 'Impostos e Taxas', 'arquivado', 11, 24);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('76224924777060444706', 'Supremo Tribunal Federal (STF)', 'Dano Moral', 'em_andamento', 12, 22);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('37220810109881461583', 'Justi├ºa Militar da Uni├úo (JMU)', 'Dano Material', 'sentenciado', 13, 22);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('11740911404593422095', 'Justi├ºa Federal de Sergipe (JFS)', 'Conflitos de Consumo', 'arquivado', 14, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('54566414785814487023', 'Justi├ºa Federal de Sergipe (JFS)', 'Fal├¬ncia e Recupera├º├úo Judicial', 'em_andamento', 15, 13);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('43428928645696418421', 'Tribunal de Justi├ºa do Estado de Pernambuco (TJ-PE)', 'Responsabilidade Civil', 'arquivado', 16, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('52109117384098351973', 'Justi├ºa Federal de Sergipe (JFS)', 'Fam├¡lia e Sucess├Áes', 'arquivado', 17, 21);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('64304910623880591262', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Fam├¡lia e Sucess├Áes', 'sentenciado', 18, 14);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('04204150554621621441', 'Superior Tribunal de Justi├ºa (STJ)', 'Fal├¬ncia e Recupera├º├úo Judicial', 'em_andamento', 19, 2);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('95174306508460320536', 'Justi├ºa Federal de Sergipe (JFS)', 'Dano Material', 'sentenciado', 20, 21);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('51074503711721487370', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Propriedade Intelectual', 'aguradando_decisao', 21, 8);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('79231366281846022081', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Propriedade e Posse', 'em_andamento', 22, 18);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('04879948382783465566', 'Superior Tribunal de Justi├ºa (STJ)', 'Propriedade e Posse', 'sentenciado', 23, 1);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('66483634931696694092', 'Supremo Tribunal Federal (STF)', 'Propriedade e Posse', 'arquivado', 24, 14);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('31293374560810311884', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Responsabilidade Civil', 'arquivado', 25, 15);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('20957598278586368336', 'Superior Tribunal de Justi├ºa (STJ)', 'Dano Material', 'arquivado', 26, 11);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('43451068503737403057', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Licita├º├Áes e Contratos Administrativos', 'em_andamento', 27, 24);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('39724889343153517374', 'Superior Tribunal de Justi├ºa (STJ)', 'Direitos Trabalhistas', 'aguradando_decisao', 28, 7);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('07492624540037374998', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Contratos', 'em_andamento', 29, 10);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('26338522240899496876', 'Tribunal de Justi├ºa do Estado da Bahia (TJ-BA)', 'Fam├¡lia e Sucess├Áes', 'sentenciado', 30, 15);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('72414069368819012229', 'Justi├ºa Federal de Sergipe (JFS)', 'Responsabilidade Civil', 'aguradando_decisao', 31, 19);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('34229565369803890257', 'Justi├ºa Militar da Uni├úo (JMU)', 'Propriedade Intelectual', 'em_andamento', 32, 13);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('62458730101864452432', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Responsabilidade Civil', 'arquivado', 33, 1);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('23115120492784231336', 'Justi├ºa Militar da Uni├úo (JMU)', 'Indeniza├º├úo', 'arquivado', 34, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('59495956161119887475', 'Supremo Tribunal Federal (STF)', 'Direitos Humanos', 'em_andamento', 35, 18);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('28077948877157238138', 'Justi├ºa Federal de Sergipe (JFS)', 'Impostos e Taxas', 'aguradando_decisao', 36, 17);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('07896642840474229601', 'Tribunal Regional Federal da 1┬¬ Regi├úo (TRF-1)', 'Responsabilidade Penal', 'aguradando_decisao', 37, 5);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('76009992017533336118', 'Justi├ºa Federal de Sergipe (JFS)', 'Infra├º├Áes Administrativas', 'aguradando_decisao', 38, 3);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('79051660567368794126', 'Justi├ºa Federal de Sergipe (JFS)', 'Hereditariedade e Sucess├úo', 'sentenciado', 39, 8);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('28764708109668521532', 'Tribunal Regional Federal da 1┬¬ Regi├úo (TRF-1)', 'Conflitos de Consumo', 'aguradando_decisao', 40, 1);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('62920647340529388953', 'Justi├ºa Militar da Uni├úo (JMU)', 'Propriedade Intelectual', 'aguradando_decisao', 41, 6);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('27594630062459853736', 'Superior Tribunal de Justi├ºa (STJ)', 'Licita├º├Áes e Contratos Administrativos', 'aguradando_decisao', 42, 9);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('37477493126850210407', 'Superior Tribunal de Justi├ºa (STJ)', 'Infra├º├Áes Administrativas', 'arquivado', 43, 4);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('56102805364053584112', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Indeniza├º├úo', 'sentenciado', 44, 12);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('96336414961109315145', 'Justi├ºa Militar da Uni├úo (JMU)', 'Indeniza├º├úo', 'em_andamento', 45, 9);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('37622115717585628519', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Infra├º├Áes Ambientais', 'em_andamento', 46, 21);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('27938007718197704478', 'Justi├ºa do Trabalho da 20┬¬ Regi├úo (TRT-20)', 'Conflitos de Consumo', 'arquivado', 47, 25);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('62861238048558610085', 'Tribunal Regional Federal da 1┬¬ Regi├úo (TRF-1)', 'Licita├º├Áes e Contratos Administrativos', 'arquivado', 48, 7);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('41811712102947558923', 'Justi├ºa do Trabalho da 2┬¬ Regi├úo (TRT-2)', 'Propriedade e Posse', 'em_andamento', 49, 2);
INSERT INTO public.processo (numero, orgao, assunto, status, id, procurador_id) VALUES ('97341365227220168019', 'Tribunal de Justi├ºa do Estado da Bahia (TJ-BA)', 'Indeniza├º├úo', 'arquivado', 50, 9);


--
-- Data for Name: distribuicao; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: documento; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('recurso_ordinario62.pdf', 'despacho', 'caminho/ficticio/recurso_ordinario62.pdf', 1, 41);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('impugnacao_ao_cumprimento_de_sentenca60.pdf', 'despacho', 'caminho/ficticio/impugnacao_ao_cumprimento_de_sentenca60.pdf', 2, 44);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('pedido_de_liberdade_provisoria99.pdf', 'despacho', 'caminho/ficticio/pedido_de_liberdade_provisoria99.pdf', 3, 18);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_reintegracao_de_posse17.pdf', 'despacho', 'caminho/ficticio/acao_de_reintegracao_de_posse17.pdf', 4, 40);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('recurso_extraordinario68.pdf', 'peticao_inicial', 'caminho/ficticio/recurso_extraordinario68.pdf', 5, 26);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_improbidade_administrativa56.pdf', 'contestacao', 'caminho/ficticio/acao_de_improbidade_administrativa56.pdf', 6, 25);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('impugnacao_ao_cumprimento_de_sentenca33.pdf', 'peticao_inicial', 'caminho/ficticio/impugnacao_ao_cumprimento_de_sentenca33.pdf', 7, 18);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_rescisoria11.pdf', 'contestacao', 'caminho/ficticio/acao_rescisoria11.pdf', 8, 30);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('pedido_de_homologacao_de_acordo16.pdf', 'peticao_inicial', 'caminho/ficticio/pedido_de_homologacao_de_acordo16.pdf', 9, 12);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_nunciacao_de_obra_nova48.pdf', 'contestacao', 'caminho/ficticio/acao_de_nunciacao_de_obra_nova48.pdf', 10, 27);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('peticao_inicial71.pdf', 'despacho', 'caminho/ficticio/peticao_inicial71.pdf', 11, 39);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_civil_publica70.pdf', 'contestacao', 'caminho/ficticio/acao_civil_publica70.pdf', 12, 21);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_declaratoria55.pdf', 'contestacao', 'caminho/ficticio/acao_declaratoria55.pdf', 13, 7);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_revisional_de_contrato67.pdf', 'contestacao', 'caminho/ficticio/acao_revisional_de_contrato67.pdf', 14, 37);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_cobranca38.pdf', 'recurso', 'caminho/ficticio/acao_de_cobranca38.pdf', 15, 31);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_popular14.pdf', 'contestacao', 'caminho/ficticio/acao_popular14.pdf', 16, 20);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_rescisoria32.pdf', 'contestacao', 'caminho/ficticio/acao_rescisoria32.pdf', 17, 29);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_reintegracao_de_posse80.pdf', 'contestacao', 'caminho/ficticio/acao_de_reintegracao_de_posse80.pdf', 18, 46);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('peticao_inicial91.pdf', 'recurso', 'caminho/ficticio/peticao_inicial91.pdf', 19, 39);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_monitoria85.pdf', 'peticao_inicial', 'caminho/ficticio/acao_monitoria85.pdf', 20, 31);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_indenizacao88.pdf', 'peticao_inicial', 'caminho/ficticio/acao_de_indenizacao88.pdf', 21, 5);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_interdicao72.pdf', 'peticao_inicial', 'caminho/ficticio/acao_de_interdicao72.pdf', 22, 23);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_despejo55.pdf', 'peticao_inicial', 'caminho/ficticio/acao_de_despejo55.pdf', 23, 27);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('recurso_extraordinario68.pdf', 'recurso', 'caminho/ficticio/recurso_extraordinario68.pdf', 24, 26);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_reintegracao_de_posse66.pdf', 'contestacao', 'caminho/ficticio/acao_de_reintegracao_de_posse66.pdf', 25, 4);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_consignacao_em_pagamento4.pdf', 'despacho', 'caminho/ficticio/acao_de_consignacao_em_pagamento4.pdf', 26, 29);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('parecer_juridico90.pdf', 'contestacao', 'caminho/ficticio/parecer_juridico90.pdf', 27, 24);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('recurso_especial71.pdf', 'peticao_inicial', 'caminho/ficticio/recurso_especial71.pdf', 28, 19);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_cobranca62.pdf', 'recurso', 'caminho/ficticio/acao_de_cobranca62.pdf', 29, 3);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('mandado_de_seguranca98.pdf', 'peticao_inicial', 'caminho/ficticio/mandado_de_seguranca98.pdf', 30, 38);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('pedido_de_liberdade_provisoria35.pdf', 'despacho', 'caminho/ficticio/pedido_de_liberdade_provisoria35.pdf', 31, 9);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_improbidade_administrativa7.pdf', 'recurso', 'caminho/ficticio/acao_de_improbidade_administrativa7.pdf', 32, 9);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_rescisoria30.pdf', 'recurso', 'caminho/ficticio/acao_rescisoria30.pdf', 33, 18);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('agravo_de_instrumento28.pdf', 'recurso', 'caminho/ficticio/agravo_de_instrumento28.pdf', 34, 30);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_declaratoria27.pdf', 'recurso', 'caminho/ficticio/acao_declaratoria27.pdf', 35, 42);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_guarda79.pdf', 'recurso', 'caminho/ficticio/acao_de_guarda79.pdf', 36, 32);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_cobranca9.pdf', 'despacho', 'caminho/ficticio/acao_de_cobranca9.pdf', 37, 34);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_revisional_de_contrato18.pdf', 'recurso', 'caminho/ficticio/acao_revisional_de_contrato18.pdf', 38, 31);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_revisao_de_pensao40.pdf', 'recurso', 'caminho/ficticio/acao_de_revisao_de_pensao40.pdf', 39, 10);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_revisao_de_pensao5.pdf', 'contestacao', 'caminho/ficticio/acao_de_revisao_de_pensao5.pdf', 40, 32);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('reclamacao_constitucional23.pdf', 'peticao_inicial', 'caminho/ficticio/reclamacao_constitucional23.pdf', 41, 14);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_alimentos89.pdf', 'peticao_inicial', 'caminho/ficticio/acao_de_alimentos89.pdf', 42, 34);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_retificacao_de_registro33.pdf', 'despacho', 'caminho/ficticio/acao_de_retificacao_de_registro33.pdf', 43, 6);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_reintegracao_de_posse32.pdf', 'contestacao', 'caminho/ficticio/acao_de_reintegracao_de_posse32.pdf', 44, 11);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_retificacao_de_registro45.pdf', 'contestacao', 'caminho/ficticio/acao_de_retificacao_de_registro45.pdf', 45, 11);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('pedido_de_homologacao_de_acordo57.pdf', 'recurso', 'caminho/ficticio/pedido_de_homologacao_de_acordo57.pdf', 46, 29);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('agravo_interno48.pdf', 'peticao_inicial', 'caminho/ficticio/agravo_interno48.pdf', 47, 19);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('reclamacao_constitucional88.pdf', 'peticao_inicial', 'caminho/ficticio/reclamacao_constitucional88.pdf', 48, 43);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_revisional_de_contrato64.pdf', 'peticao_inicial', 'caminho/ficticio/acao_revisional_de_contrato64.pdf', 49, 22);
INSERT INTO public.documento (nome, tipo, caminho, id, processo_id) VALUES ('acao_de_indenizacao37.pdf', 'recurso', 'caminho/ficticio/acao_de_indenizacao37.pdf', 50, 49);


--
-- Data for Name: prazo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('contestacao', '2021-03-04', 'vencido', 1, 18);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2028-12-22', 'em_andamento', 2, 36);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2023-01-16', 'vencido', 3, 40);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2020-02-03', 'vencido', 4, 27);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2023-04-01', 'vencido', 5, 24);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2029-09-05', 'em_andamento', 6, 23);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2021-02-05', 'vencido', 7, 3);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('manisfestacao', '2023-04-02', 'vencido', 8, 43);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('contestacao', '2028-01-23', 'em_andamento', 9, 47);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2020-01-17', 'vencido', 10, 31);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2029-08-24', 'em_andamento', 11, 1);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('contestacao', '2027-05-24', 'em_andamento', 12, 13);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('contestacao', '2030-06-07', 'em_andamento', 13, 46);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('recurso', '2021-06-25', 'vencido', 14, 10);
INSERT INTO public.prazo (tipo, data_vencimento, status, id, processo_id) VALUES ('manisfestacao', '2023-05-06', 'vencido', 15, 1);


--
-- Data for Name: processo_partes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (1, 22);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (2, 16);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (3, 19);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (4, 43);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (5, 45);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (6, 4);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (7, 47);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (8, 30);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (9, 38);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (10, 40);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (11, 34);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (12, 45);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (13, 49);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (14, 39);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (15, 24);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (16, 35);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (17, 3);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (18, 17);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (19, 19);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (20, 13);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (21, 34);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (22, 13);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (23, 38);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (24, 36);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (25, 33);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (26, 14);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (27, 28);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (28, 27);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (29, 35);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (30, 7);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (31, 29);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (32, 1);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (33, 17);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (34, 12);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (35, 43);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (36, 14);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (37, 24);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (38, 38);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (39, 40);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (40, 26);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (41, 44);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (42, 49);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (43, 11);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (44, 20);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (45, 5);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (46, 46);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (47, 11);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (48, 38);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (49, 41);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (50, 11);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (21, 40);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (2, 21);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (23, 22);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (28, 25);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (25, 50);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (2, 36);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (5, 44);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (28, 5);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (30, 6);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (17, 26);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (44, 29);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (15, 8);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (45, 29);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (45, 25);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (1, 49);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (23, 24);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (48, 29);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (42, 33);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (49, 45);
INSERT INTO public.processo_partes (processo_id, cliente_id) VALUES (15, 33);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cliente_id_seq', 50, true);


--
-- Name: distribuicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.distribuicao_id_seq', 1, false);


--
-- Name: documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.documento_id_seq', 50, true);


--
-- Name: prazo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.prazo_id_seq', 15, true);


--
-- Name: processo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.processo_id_seq', 50, true);


--
-- Name: procurador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.procurador_id_seq', 25, true);


--
-- PostgreSQL database dump complete
--

