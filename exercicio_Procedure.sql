use bd_empresa;

DELIMITER //
create procedure aumentoSalario_2(in taxa decimal(1,1), in idFuncionario int)
begin
	update funcionario set salario = salario * taxa where id_func = idFuncionario;
end //
DELIMITER ;

set @taxa = 0.1;
set @idFuncionario = 2;

call aumentoSalario(@taxa, @idFuncionario);

select * from funcionario where id_func = 2;

create table hora_extra(
	id int primary key auto_increment,
	horas_trabalhadas int,
    id_func int,
	CONSTRAINT fk_funcionario FOREIGN KEY (id_func)
        REFERENCES funcionario (id_func)
);