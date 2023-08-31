
INSERT INTO mecanico (`id`, `CREA`, `nome`, `logradouro`, `CPF`, `celular`) VALUES
    (1, 'O123G', 'José Antonio Silva Fake', 'Rua das Dores, 123, JD Madeira - Apucarana PR', '05997850048', '43996874748'),
    (2, '5873G', 'Carlos Lopes Fake', 'Rua das Pedras, 71, JD Moveleiro - Arapongas PR', '88766900000', '43996874571');

INSERT INTO veiculo (`id`, `placa`, `marca`, `modelo`, `ano`, `renavan`) VALUES
    (1, 'NAS2292', 'Fiat', 'Utilitario', 2013, '348206388'),
    (2, 'B1B2292', 'Ford', 'Sedan', 2010, '34A279388'),
    (3, 'B152292', 'Ford', 'Sedan', 2011, '34A279389'),
    (4, 'B152298', 'Honda', 'Esportivo', 2012, '34A27938W'),
    (5, 'B1K2298', 'WV', 'Popular', NULL, '34AXXA388');
    -- TODO: ATLERAR TIPO DADO DO ANO PARA SMALLINT