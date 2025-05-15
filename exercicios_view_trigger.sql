DELIMITER //
create trigger inserir_dado
after insert on cliente 
	for each row 
    begin 
		insert into telefone_cliente (telefone) values ('9', DEFAULT);
	end //
DELIMITER ;

DELIMITER //
create trigger deletar_telefone_cliente
after delete on cliente 
	for each row 
    begin 
		delete from telefone_cliente where cliente.cpf = OLD.telefone_cliente.cpf_cli;
	end //
DELIMITER ;

CREATE TABLE registros (
    num_conta VARCHAR(7) PRIMARY KEY,
    saldo FLOAT NOT NULL DEFAULT 0,
    tipo_conta INT,
    num_agencia INT,
    CONSTRAINT fk_agencia FOREIGN KEY (num_agencia)
        REFERENCES agencia (numero_agencia)
);