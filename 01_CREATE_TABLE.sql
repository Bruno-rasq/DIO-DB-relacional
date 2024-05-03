CREATE TABLE usuarios (
  id INT NOT NULL,
  nome varchar(250) NOT NULL, -- nome do usuario
  email varchar(100) NOT nULL UNIQUE, -- email do usuario
  endereco varchar(50) NOT NULL, -- endereco do usuario
  data_nascimento date NOT NULL -- data de nascimento do usuario
);

CREATE TABLE destinos (
  id INT NOT NULL,
  nome varchar(250) NOT NULL,
  descricao varchar(250) NOT NULL
);

CREATE TABLE reservas (
  id INT NOT NULL,
  id_usuario INT NOT NULL,
  id_destino INT NOT NULL,
  data_viagem DATE,
  status varchar(250) DEFAULT 'PENDENTE'  COMMENT 'Status da reserva (confirmada, pendente, cancelada, etc.)'
)