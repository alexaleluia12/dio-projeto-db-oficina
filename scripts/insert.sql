
INSERT INTO mecanico (`id`, `CREA`, `nome`, `logradouro`, `CPF`, `celular`) VALUES
    (1, 'O123G', 'José Antonio Silva Fake', 'Rua das Dores, 123, JD Madeira - Apucarana PR', '05997850048', '43996874748'),
    (2, '5873G', 'Carlos Lopes Fake', 'Rua das Pedras, 71, JD Moveleiro - Arapongas PR', '88766900000', '43996874571');

INSERT INTO veiculo (`id`, `placa`, `marca`, `modelo`, `ano`, `renavan`) VALUES
    (1, 'NAS2292', 'Fiat', 'Utilitario', 2013, '348206388'),
    (2, 'B1B2292', 'Ford', 'Sedan', 2010, '34A279388'),
    (3, 'B152292', 'Ford', 'Sedan', 2011, '34A279389'),
    (4, 'B152298', 'Honda', 'Esportivo', 2012, '34A27938W'),
    (5, 'B1K2298', 'WV', 'Popular', NULL, '34AXXA388');

INSERT INTO cliente VALUES
    (1, 'Marcelo Antonio Trump Fake', 'Rua ABC 34, Centro - Brasilia DF', '547okh7879P', '11998746170'),
    (2, 'Miriam Nunes Fake', 'Rua Pitagoras 11, Centro - Brasilia - DF', '547okh7879Q', '11998746171'),
    (3, 'Milena Mendes Alves do Fake', 'Av. Setubal 6165, JD Alvorada - Brasilia - DF', '547okh7879R', '11998746172'),
    (4, 'Mario Jandir da Silva Fake', 'Rua Nações Unidas 1012, Centro - São Paulo - SP', '547okh7879T', NULL),
    (5, 'Miguel Alves de Castro Fake', 'Rua dos Torres, 87 - Centro - São Paulo - SP', '547okh7879U', NULL);

INSERT INTO veiculo_pessado (`qnt_eixos`, `veiculo_placa`) VALUES
    (4, 'NAS2292');

INSERT INTO revisao VALUES
    ('O123G', 'NAS2292', '2023-08-21 10:00:00', 1010.0, 'Troca do Cardam, alinhamento e balancimaneto', 'Cardam', DEFAULT),
    ('O123G', 'B1B2292', '2023-08-21 17:30:00', 500.0, 'Balanceamento e troca de óleo', 'Óleo', 'feito'),
    ('5873G', 'B152292', '2023-08-18 08:00:00', 2500.0, 'Motor Fundido', 'Recondicionamento do Motor', DEFAULT),
    ('5873G', 'B152298', '2023-08-21 08:30:00', 500.0, 'Volante froucho',  'Borachas A1 e F4 do Volante', 'negociacao'),
    ('5873G', 'B1K2298', '2023-08-22 08:30:00', 800.0, 'Revisão Geral', 'Óleo e 2 Pneu aro 14', 'feito');