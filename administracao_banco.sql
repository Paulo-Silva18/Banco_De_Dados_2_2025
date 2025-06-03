CREATE USER my_user1 IDENTIFIED BY '10571057';

CREATE USER my_admin IDENTIFIED BY '1057105799';

use bd_empresa;
create table falar(
	dizer varchar(45)
);
create table contador(
	cont int
);
use auladml;
create table depositos(
	valor_deposito int
);
create table produtos(
	produtos float
);

use bd_empresa;
GRANT ALL ON bd_empresa.* TO my_admin;

use bd_empresa;
GRANT select, insert, delete, update ON bd_empresa.* TO my_user1;

SELECT * from mysql.user;

REVOKE select, insert, delete, update ON bd_empresa.* FROM
my_user1;

