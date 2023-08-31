select * from revisao;

select * from revisao
where pagamento = 'feito'

-- marca do carro mais revisado
select count(marca) as num_carros, marca from veiculo
group by marca
limit 1

-- marcas de carro que tiveram apenas uma revisao
select count(marca) as num_carros, marca from veiculo
group by marca
having count(marca) = 1

-- nome do mecanicao, data, placa de carro pesado de todos carros revisados
select m.nome, r.data_revisao, r.veiculo_placa from revisao r
  inner join veiculo_pessado vp on vp.veiculo_placa = r.veiculo_placa
  inner join mecanico m on m.CREA = r.mecanico_CREA
order by r.data_revisao desc
